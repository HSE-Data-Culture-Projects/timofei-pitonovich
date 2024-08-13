import 'package:flutter/material.dart';

import '../../questions.dart';

class TrueFalseQuestionWidget extends StatefulWidget {
  final TrueFalseQuestion question;

  const TrueFalseQuestionWidget({Key? key, required this.question})
      : super(key: key);

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
      children: [
        Text(widget.question.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text(widget.question.questionText, style: TextStyle(fontSize: 16)),
        SizedBox(height: 20),
        RadioListTile<bool>(
          title: Text('True'),
          value: true,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value;
            });
          },
        ),
        RadioListTile<bool>(
          title: Text('False'),
          value: false,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value;
            });
          },
        ),
        SizedBox(height: 20),
        Text("Feedback: ${widget.question.generalFeedback}",
            style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
