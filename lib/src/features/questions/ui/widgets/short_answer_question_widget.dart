import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import '../../questions.dart';

class ShortAnswerQuestionWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    if (selectedAnswer != null) {
      controller.text = selectedAnswer!;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question.name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          question.questionText,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: 'Your Answer',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            onAnswerSelected(value);
          },
        ),
        const SizedBox(height: 20),
        DcElevatedButton(
          onPressed: onCheckAnswer,
          text: 'Проверить ответ',
        ),
      ],
    );
  }
}
