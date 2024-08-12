import 'package:app/src/features/questions/questions.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({super.key, required this.question});

  final Question question;

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.question is ShortAnswerQuestion) {
      return Column(
        children: <Widget>[
          Text(widget.question.name),
          const SizedBox(height: 8),
          Text(widget.question.questionText),
          const SizedBox(height: 8),
          for (final answer
              in (widget.question as ShortAnswerQuestion).answers) ...[
            Text(answer.text),
            const SizedBox(height: 8),
          ]
        ],
      );
    }
    if (widget.question is MultichoiceQuestion) {
      return Column(
        children: <Widget>[
          Text(widget.question.name),
          const SizedBox(height: 8),
          Text(widget.question.questionText),
          const SizedBox(height: 8),
          for (final answer
              in (widget.question as MultichoiceQuestion).answers) ...[
            Text(answer.text),
            const SizedBox(height: 8),
          ]
        ],
      );
    }
    if (widget.question is TrueFalseQuestion) {
      return Column(
        children: <Widget>[
          Text(widget.question.name),
          const SizedBox(height: 8),
          Text(widget.question.questionText),
          const SizedBox(height: 8),
          Text('true'),
          Text('false'),
        ],
      );
    }
    return const SizedBox.shrink();
  }
}
