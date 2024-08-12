import 'package:app/src/features/main/di/providers.dart';
import 'package:app/src/features/topics/ui/ui.dart';
import 'package:app/src/localization/app_localizations.dart';
import 'package:app/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
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
              const Row(
                children: <Widget>[
                  Expanded(
                    child: _ProgressWidget(
                      progress: 0.3,
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: _ProgressWidget(
                      progress: 0.56,
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: _ProgressWidget(
                      progress: 0.75,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      locale.mainDigitalLiteracyExam,
                      textAlign: TextAlign.center,
                      style: context.fontsTheme.dcLabelLarge,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      locale.mainProgrammingExam,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: context.fontsTheme.dcLabelLarge,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      locale.mainDataAnalysisExam,
                      textAlign: TextAlign.center,
                      style: context.fontsTheme.dcLabelLarge,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              DcElevatedButton(
                text: locale.mainSolveButtonText,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TopicPage(),
                    ),
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
        backgroundColor: context.colorScheme.secondaryDarkGray,
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

class _ProgressWidget extends StatelessWidget {
  const _ProgressWidget({this.progress = 0.1});

  final double progress;

  @override
  Widget build(BuildContext context) => Container(
        height: 48,
        padding: const EdgeInsets.all(10),
        child: HorizontalRateIndicator(
          value: progress,
          fillColor: _color(context),
          trackColor: context.colorScheme.secondaryGray,
        ),
      );

  Color _color(BuildContext context) {
    if (progress <= 0.39999999) {
      return context.colorScheme.errorRed;
    }
    if (progress <= 0.59999999) {
      return context.colorScheme.attentionYellow;
    }
    return context.colorScheme.attentionGreen;
  }
}
