import 'package:app/src/features/questions/questions.dart';
import 'package:app/src/features/questions/services/services.dart';

class QuestionsRepositoryImpl implements QuestionsRepository {
  final QuestionsService _service;

  QuestionsRepositoryImpl(this._service);

  @override
  Future<List<Question>> getQuestionsByTopicId(String topicId) {
    return _service.getQuestionsByTopicId(topicId);
  }
}
