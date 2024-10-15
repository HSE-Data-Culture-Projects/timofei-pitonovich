import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
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

  Future<void> _getGigaChatHint() async {
    setState(() {
      _isLoading = true;
      _hint = null;
    });

    try {
      // Получаем текст вопроса из widget.question
      final message = widget.question.questionText;

      // Отправляем POST-запрос на ваш бэкенд
      final service = ref.watch(gigaChatServiceProvider);
      await service.authenticate();
      final response = await service.generate(message);

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
          text: 'Подсказка от GIGACHAT1',
          onPressed: _isLoading ? () {} : _getGigaChatHint,
        ),
        const SizedBox(height: 16),
        if (_isLoading) const Center(child: CircularProgressIndicator()),
        if (_hint != null)
          Text(
            _hint!,
            style: const TextStyle(fontSize: 16),
          ),
      ],
    );
  }
}
