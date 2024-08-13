import 'package:flutter/material.dart';

import '../../questions.dart';

class ShortAnswerQuestionWidget extends StatelessWidget {
  final ShortAnswerQuestion question;

  const ShortAnswerQuestionWidget({Key? key, required this.question})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text(question.questionText, style: TextStyle(fontSize: 16)),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            labelText: 'Your Answer',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        Text("Feedback: ${question.generalFeedback}",
            style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
