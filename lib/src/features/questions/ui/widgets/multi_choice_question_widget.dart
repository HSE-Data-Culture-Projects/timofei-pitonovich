import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    _loadHintFromPrefs();
  }

  Future<void> _loadHintFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'gigachat_hint_${widget.question.name}';
    final stored = prefs.getString(key);
    if (stored != null) {
      setState(() => _hint = stored);
    }
  }

  Future<void> _getGigaChatHint() async {
    setState(() {
      _isLoading = true;
      _hint = null;
    });

    try {
      final prompt = _buildGigaPrompt();
      final service = ref.read(gigaChatServiceProvider);
      await service.authenticate();
      final response = await service.generate(prompt);

      final hint = response.choices.first.message.content.trim();

      final prefs = await SharedPreferences.getInstance();
      final key = 'gigachat_hint_${widget.question.name}';
      await prefs.setString(key, hint);

      setState(() {
        _hint = hint.isNotEmpty ? hint : 'Не удалось получить подсказку';
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _hint = 'Ошибка: $e';
        _isLoading = false;
      });
    }
  }

  String _buildGigaPrompt() {
    final q = widget.question.questionText;
    final choices = widget.question.answers.map((a) => a.text).join(', ');
    final correct =
        widget.question.answers.where((answer) => answer.fraction > 0);
    return '''
$q
Варианты ответов: $choices
Правильный ответ: $correct
Зная, что ответ (ответы) "$correct" является правильным, опиши рассуждения 
насчёт правильности или неправильности каждого ответа. 
Не выдавай правильный ответ явно, но намекай на него (них).
''';
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
