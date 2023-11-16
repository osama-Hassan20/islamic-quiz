import '../../../models/questions.dart';
import 'data.dart';

List<Question> questionsUnderstandingQuranOne = understandingQuranOne
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();




List<Question> questionsUnderstandingQuranTwo = understandingQuranTwo
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();



List<Question> questionsUnderstandingQuranThree = understandingQuranThree
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();



List<Question> questionsUnderstandingQuranFour = understandingQuranFour
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();



List<Question> questionsUnderstandingQuranFive = understandingQuranFive
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();



List<Question> questionsUnderstandingQuranSix = understandingQuranSix
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();



List<Question> questionsUnderstandingQuranSeven = understandingQuranSeven
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();



List<Question> questionsUnderstandingQuranEight = understandingQuranEight
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();



List<Question> questionsUnderstandingQuranNine = understandingQuranNine
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();



List<Question> questionsUnderstandingQuranTen = understandingQuranTen
    .map((question) => Question(
    id: question['id'],
    question: question['question'],
    answer: question['answer_index'],
    options: question['options']))
    .toList();



//
// List<Question> questionsUnderstandingQuranTwentySeven = pathToAllahTwentySeven
//     .map((question) => Question(
//     id: question['id'],
//     question: question['question'],
//     answer: question['answer_index'],
//     options: question['options']))
//     .toList();