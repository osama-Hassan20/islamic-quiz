import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../layout/cubit/cubit.dart';
import '../layout/cubit/states.dart';
import '../questions_data/list_of_all_questions.dart';
import '../shared/components/widgets/question_card.dart';
import '../shared/styles/colors.dart';

class QuizScreen extends StatelessWidget {
  final int indexx;
  final int id;
  final int idH;

  const QuizScreen({super.key,
    required this.indexx,
    required this.id,
    required this.idH,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mixAllTotalNamesQuestions[idH][id][indexx]),
            const SizedBox(width: 5,),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black)),
              child: Center(child: Text('${indexx + 1}',style: const TextStyle(color: Colors.white),)),
            ),
          ],
        ),
        centerTitle: true,

      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 20),
              child: BlocBuilder<QuestionsCubit, QuestionsState>(
                builder: (context, state) {
                  return Text.rich(
                    TextSpan(//${_currentIndex + 1}/ ${datamodel[widget.index]["data"].length}"
                        text:
                        "Question ${BlocProvider.of<QuestionsCubit>(context).selectQuestion} ",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text: "/${mixAllTotalQuestions[idH][id][indexx].length}",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(color: Colors.white,),
                          ),
                        ]),
                  );
                },
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: PageView.builder(
                  controller: BlocProvider.of<QuestionsCubit>(context).pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => SingleChildScrollView(
                    child: Column(
                      children: [
                        QuestionCard(
                          question: mixAllTotalQuestions[idH][id][indexx][index],
                          indexxx: indexx,
                          id: id,
                          idH: idH,
                        ),
                      ],
                    ),
                  ),
                  itemCount: mixAllTotalQuestions[idH][id][indexx].length),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../constants.dart';
// import '../../cubit/questions_cubit.dart';
// import '../../cubit/questions_state.dart';
// import '../../models/questions.dart';
// import '../widgets/question_card.dart';
//
// class QuizScreen extends StatelessWidget {
//   const QuizScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: defaultColor,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//
//       ),
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//
//             Padding(
//               padding:
//               const EdgeInsets.symmetric(horizontal: kDefaultPadding),
//               child: BlocBuilder<QuestionsCubit, QuestionsState>(
//                 builder: (context, state) {
//                   return Text.rich(
//                     TextSpan(
//                         text:
//                         "Question ${BlocProvider.of<QuestionsCubit>(context).selectQuestion} ",
//                         style: Theme.of(context)
//                             .textTheme
//                             .headlineMedium
//                             ?.copyWith(
//                           color: Colors.white,
//                         ),
//                         children: [
//                           TextSpan(
//                             text: "/${questions.length}",
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .headlineSmall
//                                 ?.copyWith(color: Colors.white,),
//                           ),
//                         ]),
//                   );
//                 },
//               ),
//             ),
//             const Divider(
//               color: Colors.grey,
//               thickness: 1.5,
//             ),
//             const SizedBox(
//               height: kDefaultPadding,
//             ),
//             Expanded(
//               child: PageView.builder(
//                   controller: BlocProvider.of<QuestionsCubit>(context).pageController,
//                   physics: const NeverScrollableScrollPhysics(),
//                   itemBuilder: (context, index) => Column(
//                     children: [
//                       QuestionCard(
//                         question: questions[index],
//                       ),
//                     ],
//                   ),
//                   itemCount: questions.length),
//             ),
//             const SizedBox(
//               height: kDefaultPadding,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }