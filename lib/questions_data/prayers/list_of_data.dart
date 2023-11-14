import '../../models/questions.dart';
import 'data.dart';

List<Question> questionsPrayersOne = prayersOne
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();

List<Question> questionsPrayersTwo = prayersTwo
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();

List<Question> questionsPrayersThree = prayersThree
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();

List<Question> questionsPrayersFour = prayersFour
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();
