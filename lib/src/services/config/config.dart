import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

/// Список доступных в приложении языков.
const availableLanguages = <String, Locale>{
  'Русский': Locale('ru'),
  'English': Locale('en'),
};

final selectedLanguageProvider = StateProvider<Locale>(
  (ref) => const Locale('ru'),
);

/// Список доступных в приложении моделей искусственного интеллекта.
const availableAIModels = <String>[
  'Gigachat',
];

final selectedAIModelProvider = StateProvider<String>((ref) => 'Gigachat');

/// Список доступных в приложении цветовых тем.
final availableThemes = <ThemeData>[
  DcThemeData.light,
  DcThemeData.dark,
];

final selectedThemeProvider = StateProvider<ThemeData>(
  (ref) => availableThemes[0],
);

final selectedThemeNameProvider = Provider<String>((ref) {
  final selectedTheme = ref.watch(selectedThemeProvider);
  if (selectedTheme == availableThemes[0]) {
    return 'light';
  }
  return 'dark';
});
