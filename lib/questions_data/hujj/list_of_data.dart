import '../../models/questions.dart';
import '../info_quran/data.dart';
import 'data.dart';

List<Question> questionsHujjOne = hujjOne
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();

List<Question> questionsHujjTwo = hujjTwo
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();

List<Question> questionsHujjThree = hujjThree
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();
