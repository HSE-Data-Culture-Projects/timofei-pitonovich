import 'package:app/src/services/storage/managers/local_storage_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  return throw UnimplementedError();
});

final localStorageManagerProvider = Provider<LocaleDatabaseManager>((ref) {
  final instance = LocaleDatabaseManager();
  instance.init();
  return instance;
});
