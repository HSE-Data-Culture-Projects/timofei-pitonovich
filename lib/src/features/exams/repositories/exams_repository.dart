import '../exams.dart';

abstract interface class ExamsRepository {
  Future<List<Exam>> getExams();
}
