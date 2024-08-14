import 'package:flutter/material.dart';
import 'package:app/src/features/questions/questions.dart';

class QuestionWidget extends StatefulWidget {
  final Question question;
  final void Function(dynamic answer) onAnswerSelected;
  final VoidCallback onCheckAnswer;

  const QuestionWidget({
    super.key,
    required this.question,
    required this.onAnswerSelected,
    required this.onCheckAnswer,
  });

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.question is ShortAnswerQuestion) {
      return ShortAnswerQuestionWidget(
        question: widget.question as ShortAnswerQuestion,
        onAnswerSelected: widget.onAnswerSelected,
        onCheckAnswer: widget.onCheckAnswer,
      );
    }
    if (widget.question is MultichoiceQuestion) {
      return MultiChoiceQuestionWidget(
        question: widget.question as MultichoiceQuestion,
        onAnswerSelected: widget.onAnswerSelected,
        onCheckAnswer: widget.onCheckAnswer,
      );
    }
    if (widget.question is TrueFalseQuestion) {
      return TrueFalseQuestionWidget(
        question: widget.question as TrueFalseQuestion,
        onAnswerSelected: widget.onAnswerSelected,
        onCheckAnswer: widget.onCheckAnswer,
      );
    }
    return const SizedBox.shrink();
  }
}
