import 'package:app/src/services/config/config.dart';
import 'package:app/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

class DcErrorWidget extends ConsumerWidget {
  const DcErrorWidget({super.key, this.onTryAgainTap});

  final VoidCallback? onTryAgainTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Упс! Что-то пошло не так!',
          style: context.fontsTheme.dcHeadlineMedium,
        ),
        const SizedBox(height: 48),
        UniversalAssetImage(
          'assets/images/${ref.watch(selectedThemeNameProvider)}/snake.svg',
        ),
        const SizedBox(height: 48),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DcElevatedButton(
            text: 'Повторить попытку',
            onPressed: () {
              onTryAgainTap?.call();
            },
          ),
        ),
      ],
    );
  }
}
