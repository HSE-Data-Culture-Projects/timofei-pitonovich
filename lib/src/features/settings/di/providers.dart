import 'package:app/src/features/settings/settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsManagerProvider = Provider.autoDispose<SettingsManager>(
  (ref) => SettingsManager(),
);
