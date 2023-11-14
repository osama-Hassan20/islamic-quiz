import '../../models/questions.dart';
import 'data.dart';

List<Question> questionsPurityOne = purityOne
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();
