import 'package:flutter/foundation.dart';

import '../topics.dart';

class TopicsManager {
  final TopicsRepository _topicsRepository;
  final TopicsStateHolder _topicsStateHolder;

  TopicsManager(
    this._topicsRepository,
    this._topicsStateHolder,
  );

  Future<void> getTopicsByExamId(String examId) async {
    try {
      _topicsStateHolder.setLoading();
      final topics = await _topicsRepository.getTopicsByExam(examId);
      _topicsStateHolder.setLoaded(topics);
    } on Exception catch (e) {
      debugPrint('$e');
      _topicsStateHolder.setError();
    }
  }
}
