import 'package:app/src/localization/app_localizations.dart';
import 'package:flutter/cupertino.dart';

extension AppLocalization on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
