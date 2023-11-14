import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../layout/cubit/cubit.dart';
import '../layout/cubit/states.dart';
import '../questions_data/list_of_all_questions.dart';
import '../shared/components/components.dart';
import '../shared/components/constant.dart';
import '../shared/components/widgets/button_app.dart';
import '../shared/styles/colors.dart';
import 'homa_screen.dart';

class ScoreScreen extends StatelessWidget {
  final int index;
  final int id;

  ScoreScreen({
    required this.index,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    double score = BlocProvider.of<QuestionsCubit>(context).numOfCorrectAns / mixAllQuestions[id][index].length;
    String grade = getGrade(score);

    return Scaffold(
      backgroundColor: defaultColor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hello, ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),),
                    Text(
                      usernamecontroller.text,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 15
                  ),
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFC8E6C9),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [

                      Expanded(
                        child: Container(
                          child: Text(
                            'Correct Answer: ${BlocProvider.of<QuestionsCubit>(context).numOfCorrectAns}',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                        child: Icon(Icons.done),
                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 15
                  ),
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFCDD2),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [

                      Expanded(
                        child: Container(
                          child: Text(
                            'Wrong Answer: ${mixAllQuestions[id][index].length - BlocProvider.of<QuestionsCubit>(context).numOfCorrectAns}',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                        child: Icon(Icons.close),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text(grade,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10,),
                Image.asset(
                  "assets/images/score.jpg",
                  width: double.infinity,
                ),
                SizedBox(height: 10,),
                ButtonApp(
                    text: 'to home',
                  onTap: (){
                    navigateAndFinish(context, HomeScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}