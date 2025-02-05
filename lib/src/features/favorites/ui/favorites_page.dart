import 'package:app/src/features/favorites/di/providers.dart';
import 'package:app/src/features/favorites/state/state_models/favorites_state.dart';
import 'package:app/src/features/questions/questions.dart';
import 'package:app/src/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

class FavoritesPage extends ConsumerStatefulWidget {
  const FavoritesPage({super.key});

  @override
  ConsumerState<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends ConsumerState<FavoritesPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(favoritesManagerProvider).getFavorites();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(favoritesStateHolderProvider);

    final locale = context.l10n;
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      appBar: AppBar(
        title: Text(
          locale.favoritesPageTitle,
          style: context.fontsTheme.dcHeadlineMedium,
        ),
      ),
      body: switch (state) {
        FavoritesLoadingState() => const Center(
            child: CircularProgressIndicator(),
          ),
        FavoritesLoadedState(:final favoriteQuestions) =>
          favoriteQuestions.isEmpty
              ? const Center(
                  child: Text('В избранных нет вопросов!'),
                )
              : ListView(
                  children: favoriteQuestions
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
        FavoritesErrorState() => const Center(
            child: Text('Произошла невиданная ошибка!'),
          ),
      },
    );
  }
}
