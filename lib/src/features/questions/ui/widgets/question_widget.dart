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
      return ShortAnswerQuestionWidget(
        question: widget.question as ShortAnswerQuestion,
      );
    }
    if (widget.question is MultichoiceQuestion) {
      return MultiChoiceQuestionWidget(
        question: widget.question as MultichoiceQuestion,
      );
    }
    if (widget.question is TrueFalseQuestion) {
      return TrueFalseQuestionWidget(
        question: widget.question as TrueFalseQuestion,
      );
    }
    return const SizedBox.shrink();
  }
}
