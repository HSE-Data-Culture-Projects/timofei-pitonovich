import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_kit/ui_kit.dart';

import '../../questions.dart';

class ShortAnswerQuestionWidget extends ConsumerStatefulWidget {
  final ShortAnswerQuestion question;
  final void Function(String answer) onAnswerSelected;
  final VoidCallback onCheckAnswer;
  final String? selectedAnswer;

  const ShortAnswerQuestionWidget({
    Key? key,
    required this.question,
    required this.onAnswerSelected,
    required this.onCheckAnswer,
    required this.selectedAnswer,
  }) : super(key: key);

  @override
  ConsumerState<ShortAnswerQuestionWidget> createState() =>
      _ShortAnswerQuestionWidgetState();
}

class _ShortAnswerQuestionWidgetState
    extends ConsumerState<ShortAnswerQuestionWidget> {
  late TextEditingController _controller;
  String? _hint;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.selectedAnswer ?? '');
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
    final answer = _controller.text.trim();
    final correct = widget.question.answers.where(
      (answer) => answer.fraction > 0,
    );
    return '''
$q
Правильный ответ: $correct
Зная, что ответ (ответы) "$correct" является правильным, а пользователь дал 
ответ $answer, опиши рассуждения, как пользователь может прийти к правильному 
(правильным) ответам. Не выдавай правильный ответ явно, но намекай на него (них).
''';
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
        DcTextField(
          label: 'Ваш ответ',
          controller: _controller,
          onChanged: (value) {
            widget.onAnswerSelected(value);
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
