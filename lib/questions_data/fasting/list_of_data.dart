import '../../models/questions.dart';
import 'data.dart';

List<Question> questionsFastingOne = fastingOne
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();

List<Question> questionsFastingTwo = fastingTwo
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();

List<Question> questionsFastingThree = fastingThree
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();
