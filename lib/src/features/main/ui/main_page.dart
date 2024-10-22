import 'package:app/src/features/main/di/providers.dart';
import 'package:app/src/features/main/ui/progress_widget.dart';
import 'package:app/src/localization/app_localizations.dart';
import 'package:app/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

import '../../exams/exams.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  Map<String, int> examsStatistics = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(examsManagerProvider).getExams();
    });
  }

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 56),
              SizedBox(
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const SizedBox(
                      height: 56,
                      width: 56,
                    ),
                    Text(
                      locale.mainTitle,
                      style: context.fontsTheme.dcHeadlineMedium,
                    ),
                    IconButton(
                      onPressed: ref.read(mainManagerProvider).openSettings,
                      icon: const Icon(Icons.settings),
                    ),
                  ],
                ),
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: UniversalAssetImage(
                    'assets/images/gigachat.png',
                    height: 204,
                    width: 223,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ref.watch(examsStateHolderProvider).when(
                    loading: () => const CircularProgressIndicator(),
                    loaded: (state) => ExamsProgressWidget(
                      state: state,
                    ),
                    error: () => const Text('Ошибка при загрузке статистики'),
                  ),
              const SizedBox(height: 24),
              DcElevatedButton(
                text: locale.mainSolveButtonText,
                onPressed: () async {
                  final exams = ref.read(examsStateHolderProvider);
                  if (exams is! ExamsLoadedState) {
                    await ref.read(examsManagerProvider).getExams();
                  }
                  await DcAlertDialog.show(
                    context: context,
                    title: 'Выберите экзамен',
                    content: const ExamChoiceAlert(),
                  );
                },
              ),
              const SizedBox(height: 8),
              Row(
                children: <Widget>[
                  Expanded(
                    child: DcElevatedButton(
                      text: locale.mainGigachatButtonText,
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DcElevatedButton(
                      text: locale.mainFavoritesButtonText,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              DcElevatedButton(
                text: locale.mainErrorsButtonText,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: context.colorScheme.secondary,
        onPressed: () {},
        shape: const CircleBorder(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: UniversalAssetImage(
            'assets/images/gigachat.png',
          ),
        ),
      ),
    );
  }
}
