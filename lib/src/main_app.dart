import 'package:app/src/localization/app_localizations.dart';
import 'package:app/src/services/config/config.dart';
import 'package:app/src/services/routing/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: ref.watch(selectedLanguageProvider),
      supportedLocales: {
        const Locale('ru'),
        const Locale('en'),
      },
      routerConfig: router,
      theme: ref.watch(selectedThemeProvider),
    );
  }
}
