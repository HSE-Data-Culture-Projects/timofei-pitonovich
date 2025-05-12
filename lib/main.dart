import 'dart:io';

import 'package:app/src/main_app.dart';
import 'package:app/src/services/network/dio.dart';
import 'package:app/src/services/storage/di/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final overrides = <Override>[];
  final prefs = await SharedPreferences.getInstance();
  overrides.addAll([
    sharedPreferencesProvider.overrideWithValue(prefs),
  ]);
  late final ProviderContainer container;
  container = ProviderContainer(overrides: overrides);

  container.read(localStorageManagerProvider);

  HttpOverrides.global = DevHttpOverrides();

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MainApp(),
    ),
  );
}
