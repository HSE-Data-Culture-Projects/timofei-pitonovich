import '../topics.dart';

abstract interface class TopicsService {
  Future<List<Topic>> getTopicsByExam(String examId);
}
