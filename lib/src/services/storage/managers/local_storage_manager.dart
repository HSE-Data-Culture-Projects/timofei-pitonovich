import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';

import '../../../features/questions/questions.dart';

/// Сервис для работы с локальной базой данных (избранное и вопросы с ошибками)
class LocaleDatabaseManager {
  // Реализуем синглтон, чтобы использовать один экземпляр базы
  static final LocaleDatabaseManager _instance =
      LocaleDatabaseManager._internal();

  factory LocaleDatabaseManager() => _instance;

  LocaleDatabaseManager._internal();

  Database? _db;

  // Хранилище для избранного
  final StoreRef<int, Map<String, dynamic>> _favoritesStore =
      intMapStoreFactory.store('favorites');

  // Хранилище для вопросов, где допущена ошибка
  final StoreRef<int, Map<String, dynamic>> _wrongAnswersStore =
      intMapStoreFactory.store('wrongAnswers');

  /// Инициализация базы данных. Вызывайте этот метод один раз при запуске приложения.
  Future<void> init() async {
    if (_db == null) {
      final appDocDir = await getApplicationDocumentsDirectory();
      final dbPath = join(appDocDir.path, 'questions.db');
      _db = await databaseFactoryIo.openDatabase(dbPath);
      debugPrint('Initialized local sembast storage');
    }
  }

  //////////////////////////////////////////////////////////////////////////////
  // Методы для работы с избранным
  //////////////////////////////////////////////////////////////////////////////

  /// Добавляет вопрос в избранное.
  Future<void> addQuestionToFavorites(Question question) async {
    if (_db == null) {
      throw Exception('База данных не инициализирована. Вызовите init()');
    }
    // Преобразуем объект в JSON и сохраняем
    final json = question.toJson();
    await _favoritesStore.add(_db!, json);
    debugPrint('Added question to favorites');
  }

  /// Удаляет вопрос из избранного по его имени (используется поле name в качестве идентификатора).
  Future<void> removeQuestionFromFavorites(Question question) async {
    if (_db == null) {
      throw Exception('База данных не инициализирована. Вызовите init()');
    }
    final finder = Finder(filter: Filter.equals('name', question.name));
    await _favoritesStore.delete(_db!, finder: finder);
    debugPrint('Removed question from favorites');
  }

  /// Получает список всех вопросов, сохранённых в избранном.
  Future<List<Question>> getFavoriteQuestions() async {
    if (_db == null) {
      throw Exception('База данных не инициализирована. Вызовите init()');
    }
    final recordSnapshots = await _favoritesStore.find(_db!);
    return recordSnapshots.map((snapshot) {
      // Преобразуем Map в объект Question
      final json = snapshot.value;
      return Question.fromJson(Map<String, dynamic>.from(json));
    }).toList();
  }

  Future<bool> isQuestionInFavorites(Question question) async {
    if (_db == null) {
      throw Exception('База данных не инициализирована. Вызовите init()');
    }
    final finder = Finder(filter: Filter.equals('name', question.name));
    return (await _favoritesStore.findFirst(_db!, finder: finder)) != null;
  }

  //////////////////////////////////////////////////////////////////////////////
  // Методы для работы с вопросами, в которых допущены ошибки
  //////////////////////////////////////////////////////////////////////////////

  /// Добавляет вопрос в список вопросов с ошибками.
  Future<void> addQuestionToWrongAnswers(Question question) async {
    if (_db == null) {
      throw Exception('База данных не инициализирована. Вызовите init()');
    }
    await _wrongAnswersStore.add(_db!, question.toJson());
    debugPrint('Added question in wrong answers');
  }

  /// Удаляет вопрос из списка вопросов с ошибками по его имени.
  Future<void> removeQuestionFromWrongAnswers(Question question) async {
    if (_db == null) {
      throw Exception('База данных не инициализирована. Вызовите init()');
    }
    final finder = Finder(filter: Filter.equals('name', question.name));
    await _wrongAnswersStore.delete(_db!, finder: finder);
    debugPrint('Removed question from wrong answers');
  }

  /// Получает список всех вопросов с ошибками.
  Future<List<Question>> getWrongAnswerQuestions() async {
    if (_db == null) {
      throw Exception('База данных не инициализирована. Вызовите init()');
    }
    final recordSnapshots = await _wrongAnswersStore.find(_db!);
    return recordSnapshots.map((snapshot) {
      final json = snapshot.value;
      return Question.fromJson(Map<String, dynamic>.from(json));
    }).toList();
  }
}
