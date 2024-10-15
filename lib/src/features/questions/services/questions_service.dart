import 'package:app/src/features/questions/questions.dart';

abstract interface class QuestionsService {
  Future<List<Question>> getQuestionsByTopicId(String topicId);
}
