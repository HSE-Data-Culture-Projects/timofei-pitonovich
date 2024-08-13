import 'package:flutter/material.dart';

import '../../questions.dart';

class MultiChoiceQuestionWidget extends StatefulWidget {
  final MultichoiceQuestion question;

  const MultiChoiceQuestionWidget({Key? key, required this.question})
      : super(key: key);

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
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text(widget.question.questionText, style: TextStyle(fontSize: 16)),
        SizedBox(height: 20),
        ...List.generate(widget.question.answers.length, (index) {
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
                  },
                )
              : CheckboxListTile(
                  title: Text(answer.text),
                  value: _selectedValues[index],
                  onChanged: (value) {
                    setState(() {
                      _selectedValues[index] = value!;
                    });
                  },
                );
        }),
        SizedBox(height: 20),
        Text("Feedback: ${widget.question.generalFeedback}",
            style: TextStyle(color: Colors.grey)),
        if (!widget.question.single) ...[
          Text(
              "Partially Correct Feedback: ${widget.question.partiallyCorrectFeedback}",
              style: TextStyle(color: Colors.grey)),
          Text("Incorrect Feedback: ${widget.question.incorrectFeedback}",
              style: TextStyle(color: Colors.grey)),
        ],
      ],
    );
  }
}
