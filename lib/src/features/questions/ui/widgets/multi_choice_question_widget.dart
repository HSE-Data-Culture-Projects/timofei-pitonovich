import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

import '../../questions.dart';

class MultiChoiceQuestionWidget extends ConsumerStatefulWidget {
  final MultichoiceQuestion question;
  final void Function(dynamic answer) onAnswerSelected;
  final VoidCallback onCheckAnswer;

  const MultiChoiceQuestionWidget({
    Key? key,
    required this.question,
    required this.onAnswerSelected,
    required this.onCheckAnswer,
  }) : super(key: key);

  @override
  ConsumerState<MultiChoiceQuestionWidget> createState() =>
      _MultiChoiceQuestionWidgetState();
}

class _MultiChoiceQuestionWidgetState
    extends ConsumerState<MultiChoiceQuestionWidget> {
  List<bool> _selectedValues = [];
  String? _hint;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _selectedValues =
        List.generate(widget.question.answers.length, (_) => false);
  }

  Future<void> _getGigaChatHint() async {
    setState(() {
      _isLoading = true;
      _hint = null;
    });

    try {
      final message = widget.question.questionText;
      final answers = widget.question.answers.map((answer) => answer.text);

      final service = ref.watch(gigaChatServiceProvider);
      await service.authenticate();
      final response =
          await service.generate('$message\nВарианты ответов: $answers');

      final hint = response.choices.first.message.content;
      if (hint.isNotEmpty) {
        setState(() {
          _hint = hint;
          _isLoading = false;
        });
      } else {
        setState(() {
          _hint = 'Не удалось получить подсказку';
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _hint = 'Ошибка: $e';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.question.name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          widget.question.questionText,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 20),
        ...List.generate(
          widget.question.answers.length,
          (index) {
            final answer = widget.question.answers[index];
            return widget.question.single
                ? RadioListTile<bool>(
                    title: Text(answer.text),
                    value: true,
                    groupValue: _selectedValues[index] ? true : null,
                    onChanged: (value) {
                      setState(() {
                        for (int i = 0; i < _selectedValues.length; i++) {
                          _selectedValues[i] = i == index;
                        }
                      });
                      widget.onAnswerSelected(answer);
                    },
                  )
                : CheckboxListTile(
                    title: Text(answer.text),
                    value: _selectedValues[index],
                    onChanged: (value) {
                      setState(() {
                        _selectedValues[index] = value!;
                      });
                      final selectedAnswers = <dynamic>[];
                      for (int i = 0; i < widget.question.answers.length; i++) {
                        if (_selectedValues[i]) {
                          selectedAnswers.add(widget.question.answers[i]);
                        }
                      }
                      widget.onAnswerSelected(selectedAnswers);
                    },
                  );
          },
        ),
        const SizedBox(height: 20),
        DcElevatedButton(
          onPressed: widget.onCheckAnswer,
          text: 'Проверить ответ',
        ),
        const SizedBox(height: 16),
        DcOutlinedButton(
          text: 'Подсказка от GIGACHAT',
          onPressed: _isLoading ? () {} : _getGigaChatHint,
        ),
        const SizedBox(height: 16),
        if (_isLoading) const Center(child: CircularProgressIndicator()),
        if (_hint != null) MarkdownBody(data: _hint!),
      ],
    );
  }
}
