import 'package:app/src/features/topics/topics.dart';

class TopicsRepositoryImpl implements TopicsRepository {
  final TopicsService _service;

  TopicsRepositoryImpl(this._service);

  @override
  Future<List<Topic>> getTopicsByExam(String examId) =>
      _service.getTopicsByExam(examId);
}
