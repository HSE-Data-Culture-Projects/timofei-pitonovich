import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_kit/ui_kit.dart';

import '../../questions.dart';

class TrueFalseQuestionWidget extends ConsumerStatefulWidget {
  final TrueFalseQuestion question;
  final void Function(bool answer) onAnswerSelected;
  final VoidCallback onCheckAnswer;

  const TrueFalseQuestionWidget({
    Key? key,
    required this.question,
    required this.onAnswerSelected,
    required this.onCheckAnswer,
  }) : super(key: key);

  @override
  ConsumerState<TrueFalseQuestionWidget> createState() =>
      _TrueFalseQuestionWidgetState();
}

class _TrueFalseQuestionWidgetState
    extends ConsumerState<TrueFalseQuestionWidget> {
  bool? _selectedValue;
  String? _hint;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
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
    final correctBool = widget.question.correctAnswer.isTrue;
    final correct = correctBool ? 'Верно' : 'Неверно';
    return '''
$q
Правильный ответ: $correct
Зная, что ответ "$correct" является правильным, опиши рассуждения насчёт 
правильности или неправильности каждого ответа. Не выдавай правильный ответ явно, 
но намекай на него (них).
''';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.question.name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          widget.question.questionText,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 20),
        RadioListTile<bool>(
          title: const Text('Верно'),
          value: true,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value;
            });
            widget.onAnswerSelected(value!);
          },
        ),
        RadioListTile<bool>(
          title: const Text('Неверно'),
          value: false,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value;
            });
            widget.onAnswerSelected(value!);
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
