import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import '../../questions.dart';

class TrueFalseQuestionWidget extends StatefulWidget {
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
  State<TrueFalseQuestionWidget> createState() =>
      _TrueFalseQuestionWidgetState();
}

class _TrueFalseQuestionWidgetState extends State<TrueFalseQuestionWidget> {
  bool? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
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
      ],
    );
  }
}
