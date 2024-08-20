import '../topics.dart';

abstract interface class TopicsRepository {
  Future<List<Topic>> getTopicsByExam(String examId);
}
