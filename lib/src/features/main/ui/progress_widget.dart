import 'package:app/src/features/exams/di/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

import '../../../shared/ui/ui_kit.dart';

class ExamsProgressWidget extends ConsumerWidget {
  const ExamsProgressWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(examsStateHolderProvider).when(
          loading: () => const CircularProgressIndicator(),
          loaded: (state) => Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  for (int i = 0; i < 3; ++i) ...<Widget>[
                    Expanded(
                      child: _ProgressWidget(
                        progress: 1 / state[i].topicsCount,
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: <Widget>[
                  for (int i = 0; i < 3; ++i) ...<Widget>[
                    Expanded(
                      child: Text(
                        state[i].name,
                        textAlign: TextAlign.center,
                        style: context.fontsTheme.dcLabelLarge,
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
          error: () => const Text('Ошибка при загрузке статистики'),
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
          trackColor: context.colorScheme.secondary,
        ),
      );

  Color _color(BuildContext context) {
    if (progress <= 0.39999999) {
      return context.colorScheme.negative;
    }
    if (progress <= 0.59999999) {
      return context.colorScheme.warning;
    }
    return context.colorScheme.positive;
  }
}
