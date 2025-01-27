import 'package:app/src/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final locale = context.l10n;
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      appBar: AppBar(
        title: Text(
          locale.favoritesPageTitle,
          style: context.fontsTheme.dcHeadlineMedium,
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
