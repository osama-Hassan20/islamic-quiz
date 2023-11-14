import '../../models/questions.dart';
import 'data.dart';

List<Question> questionsHadithOne = hadithOne
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();
