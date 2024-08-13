import 'package:app/src/localization/app_localizations.dart';
import 'package:app/src/services/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_kit/ui_kit.dart';

class SettingsPage extends ConsumerStatefulWidget {
  const SettingsPage({super.key});

  @override
  ConsumerState<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends ConsumerState<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colorScheme.background,
        title: Text(
          locale.settingsPageTitle,
          style: context.fontsTheme.dcHeadlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  locale.settingsPagePushNotifications,
                  style: context.fontsTheme.dcHeadlineMedium,
                ),
                Switch.adaptive(
                  value: true,
                  onChanged: (value) {},
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  locale.settingsPageAiModel,
                  style: context.fontsTheme.dcHeadlineMedium,
                ),
                DropdownButton(
                  value: ref.watch(selectedAIModelProvider),
                  items: availableAIModels
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            e,
                            style: context.fontsTheme.dcBodyMedium,
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      ref.read(selectedAIModelProvider.notifier).state = value;
                    }
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  locale.settingsPageAppTheme,
                  style: context.fontsTheme.dcHeadlineMedium,
                ),
                DropdownButton<ThemeData>(
                  value: ref.watch(selectedThemeProvider),
                  items: <DropdownMenuItem<ThemeData>>[
                    DropdownMenuItem<ThemeData>(
                      value: availableThemes[0],
                      child: Text(
                        locale.settingsPageLightTheme,
                        style: context.fontsTheme.dcBodyMedium,
                      ),
                    ),
                    DropdownMenuItem<ThemeData>(
                      value: availableThemes[1],
                      child: Text(
                        locale.settingsPageDarkTheme,
                        style: context.fontsTheme.dcBodyMedium,
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) {
                      ref.read(selectedThemeProvider.notifier).state = value;
                    }
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  locale.settingsPageAppLanguage,
                  style: context.fontsTheme.dcHeadlineMedium,
                ),
                DropdownButton(
                  value: ref.watch(selectedLanguageProvider),
                  items: availableLanguages.keys
                      .map(
                        (key) => DropdownMenuItem(
                          value: availableLanguages[key],
                          child: Text(
                            key,
                            style: context.fontsTheme.dcBodyMedium,
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      ref.read(selectedLanguageProvider.notifier).state = value;
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
