import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../layout/cubit/cubit.dart';
import '../../../models/questions.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key, required this.question, required this.id, required this.indexxx});
  final Question question;
  final int indexxx;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.white),
      child: Column(
        children: [
        Text(
          question.question,
          textAlign: TextAlign.start,
          textDirection: TextDirection.rtl,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.black,fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        ...List.generate(
          question.options.length,
              (index) => Option(
              text: question.options[index],
              index: index,
              question: question,
              onTap: () {
                BlocProvider.of<QuestionsCubit>(context)
                    .checkAnswer(question, index, question.id, context,indexxx,id);
              }),
        ),

      ],
      ),
    );
  }
}