import 'package:app/src/main_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    UncontrolledProviderScope(
      container: ProviderContainer(),
      child: const MainApp(),
    ),
  );
}
