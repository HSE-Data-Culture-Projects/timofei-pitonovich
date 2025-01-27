import 'package:app/src/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class MistakesPage extends StatefulWidget {
  const MistakesPage({super.key});

  @override
  State<MistakesPage> createState() => _MistakesPageState();
}

class _MistakesPageState extends State<MistakesPage> {
  @override
  Widget build(BuildContext context) {
    final locale = context.l10n;
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      appBar: AppBar(
        title: Text(
          locale.mistakesPageTitle,
          style: context.fontsTheme.dcHeadlineMedium,
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
