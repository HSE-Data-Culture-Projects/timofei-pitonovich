import 'package:app/src/features/exams/exams.dart';
import 'package:app/src/services/routing/managers/managers.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainManager {
  final NavigationManager _navigationManager;
  final SharedPreferences _sharedPreferences;
  final ExamsState _examsState;

  MainManager(
    this._navigationManager,
    this._sharedPreferences,
    this._examsState,
  );

  final _logger = Logger();

  Future<void> openSettings() async {
    _navigationManager.go('/settings');
  }

  Future<Map<String, int>> getStatistics() async {
    if (_examsState is ExamsLoadedState) {
      final exams = (_examsState as ExamsLoadedState).exams;
      final statistics = <String, int>{};
      for (final exam in exams) {
        if (!_sharedPreferences.containsKey(exam.id)) {
          _sharedPreferences.setInt(exam.id, 0);
          _logger.i('Setting 0 for ${exam.id}');
        }
        statistics.addAll({exam.id: _sharedPreferences.getInt(exam.id)!});
      }
      return statistics;
    }
    return {};
  }

  void addPassedTopic(String examId) {
    final topicCount = _sharedPreferences.getInt(examId) ?? 0;
    final newCount = topicCount + 1;
    _sharedPreferences.setInt(examId, newCount);
  }
}
