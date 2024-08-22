import 'package:app/src/features/questions/di/providers.dart';
import 'package:app/src/features/questions/ui/widgets/question_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

class QuestionsPage extends ConsumerStatefulWidget {
  const QuestionsPage({super.key});

  @override
  ConsumerState<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends ConsumerState<QuestionsPage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final questionsState = ref.watch(questionsStateHolderProvider);
    final questionsManager = ref.read(questionsStateHolderProvider.notifier);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: <Widget>[
            // Нумерация вопросов
            SizedBox(
              height: 56,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: questionsState.questions.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      _pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: questionsState.isAnswerCorrect[index] != null
                                ? (questionsState.isAnswerCorrect[index]!
                                    ? Colors.green
                                    : Colors.red)
                                : context.colorScheme.secondary),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(4),
                      child: Center(child: Text('${index + 1}')),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: questionsState.questions.length,
                itemBuilder: (context, index) {
                  final question = questionsState.questions[index];
                  return QuestionWidget(
                    question: question,
                    onAnswerSelected: (answer) {
                      questionsManager.selectAnswer(index, answer);
                    },
                    onCheckAnswer: () {
                      questionsManager.checkAnswer(index);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
