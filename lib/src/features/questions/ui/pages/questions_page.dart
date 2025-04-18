import 'package:app/src/features/exams/di/providers.dart';
import 'package:app/src/features/main/di/providers.dart';
import 'package:app/src/services/routing/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:app/src/features/questions/questions.dart';
import 'package:app/src/features/favorites/di/providers.dart';

class QuestionsPage extends ConsumerStatefulWidget {
  const QuestionsPage({required this.topicId, super.key});

  final String topicId;

  @override
  ConsumerState<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends ConsumerState<QuestionsPage> {
  int currentIndex = 0;
  bool isQuestionInFavorites = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(questionsManagerProvider(widget.topicId)).getQuestions(
            widget.topicId,
            updateState: ref
                .read(questionsStateHolderProvider(widget.topicId))
                .questions
                .isEmpty,
          );
      isQuestionInFavorites = await ref
          .read(questionsManagerProvider(widget.topicId))
          .isInFavorites(0);
      setState(() {});
    });
  }

  void _finishQuiz() {
    final questionsState =
        ref.read(questionsStateHolderProvider(widget.topicId));
    final correctCount =
        questionsState.isAnswerCorrect.values.where((ok) => ok == true).length;
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Тест завершён'),
        content: Text(
          'Вы ответили правильно на $correctCount из '
          '${questionsState.questions.length} вопросов',
        ),
        actions: [
          TextButton(
            onPressed: () {
              ref.read(navigationManagerProvider).pop();
              ref.read(navigationManagerProvider).pop();
              ref
                  .read(mainManagerProvider)
                  .addPassedTopic(ref.read(currentExamProvider) ?? '');
            },
            child: Text('Закрыть'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final questionsState =
        ref.watch(questionsStateHolderProvider(widget.topicId));
    final questionsManager = ref.read(questionsManagerProvider(widget.topicId));
    final pageController = ref.watch(questionsPageControllerProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              final question = questionsState.questions[currentIndex];
              if (!await questionsManager.isInFavorites(currentIndex)) {
                await ref
                    .read(favoritesManagerProvider)
                    .addToFavorites(question);
                isQuestionInFavorites = true;
              } else {
                await ref
                    .read(favoritesManagerProvider)
                    .removeFromFavorites(question);
                isQuestionInFavorites = false;
              }
              setState(() {});
            },
            icon: Icon(
              Icons.favorite_outline,
              size: 32,
              color:
                  isQuestionInFavorites ? context.colorScheme.negative : null,
            ),
          ),
        ],
      ),
      floatingActionButton: currentIndex == questionsState.questions.length - 1
          ? Padding(
              padding: const EdgeInsets.all(16),
              child: DcElevatedButton(
                text: 'Завершить тему',
                onPressed: _finishQuiz,
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 56,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: questionsState.questions.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                      WidgetsBinding.instance.addPostFrameCallback((_) async {
                        isQuestionInFavorites = await ref
                            .read(questionsManagerProvider(widget.topicId))
                            .isInFavorites(index);
                        setState(() {});
                      });
                    },
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: index == currentIndex
                              ? context.colorScheme.primary
                              : questionsState.isAnswerCorrect[index] != null
                                  ? (questionsState.isAnswerCorrect[index]!
                                      ? Colors.green
                                      : Colors.red)
                                  : context.colorScheme.secondary,
                        ),
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
                controller: pageController,
                itemCount: questionsState.questions.length,
                onPageChanged: (index) async {
                  currentIndex = index;
                  isQuestionInFavorites = await ref
                      .read(questionsManagerProvider(widget.topicId))
                      .isInFavorites(currentIndex);
                  setState(() {});
                },
                itemBuilder: (context, index) {
                  final question = questionsState.questions[index];
                  final selectedAnswers = questionsState.selectedAnswers[index];
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        QuestionWidget(
                          question: question,
                          selectedAnswers: selectedAnswers,
                          onAnswerSelected: (answer) {
                            questionsManager.selectAnswer(index, answer);
                          },
                          onCheckAnswer: () {
                            questionsManager.checkAnswer(index);
                          },
                        ),
                        const SizedBox(height: 56),
                      ],
                    ),
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
