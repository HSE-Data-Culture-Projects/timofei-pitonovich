import 'package:app/src/features/exams/exams.dart';

abstract interface class ExamsService {
  Future<List<Exam>> getExams();
}