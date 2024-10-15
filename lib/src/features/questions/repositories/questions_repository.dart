import 'package:app/src/features/questions/questions.dart';

abstract interface class QuestionsRepository {
  Future<List<Question>> getQuestionsByTopicId(String topicId);
}
