import 'package:app/src/features/mistakes/mistakes.dart';
import 'package:app/src/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

import '../../questions/questions.dart';

class MistakesPage extends ConsumerStatefulWidget {
  const MistakesPage({super.key});

  @override
  ConsumerState<MistakesPage> createState() => _MistakesPageState();
}

class _MistakesPageState extends ConsumerState<MistakesPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(mistakesManagerProvider).getMistakes();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(mistakesStateHolderProvider);
    final locale = context.l10n;
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      appBar: AppBar(
        title: Text(
          locale.mistakesPageTitle,
          style: context.fontsTheme.dcHeadlineMedium,
        ),
      ),
      body: switch (state) {
        MistakesLoadingState() => const Center(
            child: CircularProgressIndicator(),
          ),
        MistakesLoadedState(:final mistakeQuestions) => mistakeQuestions.isEmpty
            ? const Center(
                child: Text('Вы не допускали ошибок в вопросах!'),
              )
            : ListView(
                children: mistakeQuestions
                    .map<Widget>(
                      (question) => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: QuestionWidget(
                              question: question,
                              onAnswerSelected: (answer) {},
                              onCheckAnswer: () {},
                            ),
                          ),
                          const Divider(),
                        ],
                      ),
                    )
                    .toList(),
              ),
        MistakesErrorState() => const Center(
            child: Text('Произошла невиданная ошибка!'),
          ),
      },
    );
  }
}
