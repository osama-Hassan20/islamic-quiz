import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../shared/components/components.dart';
import 'quiz_screen.dart';
import '../layout/cubit/cubit.dart';
import '../questions_data/list_of_all_questions.dart';
import '../shared/styles/colors.dart';

class NextHome extends StatelessWidget {
  final String title;
  final int id;
  final int idH;
//namesOfTheLecturesOfFaith
  const NextHome({super.key,
    required this.title,
    required this.id,
    required this.idH,
  });

  // Widget cardItem (Question question,BuildContext context)=>Column(
  //   children: [
  //     ...List.generate(
  //       5,
  //           (index) => Container(
  //             padding: const EdgeInsets.all(20),
  //             margin: const EdgeInsets.only(top: 20),
  //             decoration: BoxDecoration(
  //               border: Border.all(color: Colors.black),
  //               borderRadius: BorderRadius.circular(15),
  //               color: defaultColor
  //             ),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Text(
  //                   '20',
  //                   style: TextStyle(
  //                       color: Colors.white,
  //                       fontSize: 16),
  //                 ),
  //
  //               ],
  //             ),
  //           ),
  //     )
  //   ],
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: defaultColor,
        elevation: 0,
        title: Text(title),
        centerTitle: true,

      ),
      body: ListView.builder(
          itemBuilder: (context , index)=>InkWell(
            onTap: (){//counterSelectQuestion
              BlocProvider.of<QuestionsCubit>(context).counterSelectQuestion();
              navigateTo(context, QuizScreen(indexx: index,id: id,idH: idH,));
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all( 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                  color: defaultColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      mixAllTotalNamesQuestions[idH][id][index],
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black)),
                    child: Center(child: Text('${index + 1}',style: TextStyle(color: Colors.white),)),
                  ),

                ],
              ),
            ),
          ),
        itemCount: mixAllTotalNamesQuestions[idH][id].length,
      ),
    );
  }
}
