
abstract class QuestionsState {}

class QuestionsInitial extends QuestionsState {}

class AnswerCorrect extends QuestionsState {}

class AnswerWrong extends QuestionsState {}

class QuestionChange extends QuestionsState {}