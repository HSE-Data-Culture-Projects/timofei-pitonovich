import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import '../../questions.dart';

class MultiChoiceQuestionWidget extends StatefulWidget {
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
  State<MultiChoiceQuestionWidget> createState() =>
      _MultiChoiceQuestionWidgetState();
}

class _MultiChoiceQuestionWidgetState extends State<MultiChoiceQuestionWidget> {
  List<bool> _selectedValues = [];

  @override
  void initState() {
    super.initState();
    _selectedValues =
        List.generate(widget.question.answers.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.question.name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Text(widget.question.questionText,
            style: const TextStyle(fontSize: 16)),
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
                      widget.onAnswerSelected(answer);
                    },
                  );
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
