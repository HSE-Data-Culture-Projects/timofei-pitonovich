import 'package:app/src/features/exams/exams.dart';

class ExamsRepositoryImpl implements ExamsRepository {
  final ExamsService _examsService;

  ExamsRepositoryImpl(this._examsService);

  @override
  Future<List<Exam>> getExams() => _examsService.getExams();
}
