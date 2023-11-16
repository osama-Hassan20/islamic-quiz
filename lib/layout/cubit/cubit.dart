import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_quiz/layout/cubit/states.dart';
import 'package:islamic_quiz/shared/components/components.dart';
import '../../screens/score_screen.dart';
import '../../models/questions.dart';
import '../../questions_data/list_of_all_questions.dart';



class QuestionsCubit extends Cubit<QuestionsState> {
  QuestionsCubit() : super(QuestionsInitial());

  PageController pageController = PageController();

  bool reset = false;
  bool isAnswered = false;
  late int correctAnswer;
  late int selectedAnswer = 1;
  bool isSkiped = false;
  int numOfCorrectAns = 0;
  late int selectQuestion = 1;
  void counterSelectQuestion(){
    selectQuestion =1;
  }
  void addCounterSelectQuestion(){
    selectQuestion ++;
  }
  checkAnswer(
      Question question, int selectedIndex, int id, BuildContext context,int index,idd,idH) {
    if(id ==1) {
      numOfCorrectAns = 0;
    }
    isAnswered = true;
    reset = true;
    selectQuestion = id;
    correctAnswer = question.answer;
    selectedAnswer = selectedIndex;
    print(numOfCorrectAns);
    if (correctAnswer == selectedAnswer) {
      numOfCorrectAns += 1;
      showSnackBar(context: context, text: 'Correct Answer', color: Colors.green);
      emit(AnswerCorrect());
    } else {
      showSnackBar(context: context, text: 'Wrong Answer', color: Colors.red);
      emit(AnswerWrong());
    }

    Future.delayed(const Duration(seconds: 1), () {
      nextQuestion(context,index,idd,idH);

      // selectQuestion = id == questions.length ? 1 : id + 1;
      selectQuestion = id == mixAllTotalQuestions[idH][idd][index].length ? 1 : id + 1;
      emit(QuestionChange());
    });
  }

  Color getRightColor(int index) {
    if (isAnswered) {
      if (index == correctAnswer) {
        return Colors.green;
      } else if (index == selectedAnswer ) {
        return  Colors.red;
      }
    }
    return Colors.grey;
  }

  // IconData getRightIcon(int index) {
  //   return getRightColor(index) ==  Colors.red ? Icons.close : Icons.done;
  // }


  nextQuestion(BuildContext context,int index,idd,idH) {
    if (selectQuestion != mixAllTotalQuestions[idH][idd][index].length)
    {
      isAnswered = false;
      reset = false;

      pageController.nextPage(
        duration: const Duration(seconds: 1),
        curve: Curves.ease,
      );
    }
    else
    {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  ScoreScreen(index: index,id: idd,idH: idH,)),
      );
      isAnswered = false;
      reset = false;
    }

  }
}