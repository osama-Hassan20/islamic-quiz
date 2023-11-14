import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/cubit/cubit.dart';
import '../../../layout/cubit/states.dart';
import '../../../models/questions.dart';
import '../constant.dart';


class Option extends StatelessWidget {
  const Option({
    super.key,
    required this.text,
    required this.index,
    required this.question,
    this.onTap,
  });
  final String text;
  final int index;
  final Question question;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionsCubit, QuestionsState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<QuestionsCubit>(context);
        Color getTheRightColor() {
          if (cubit.isAnswered) {
            if (index == cubit.correctAnswer) {
              return Colors.green;
            } else if (index == cubit.selectedAnswer &&
                cubit.selectedAnswer != cubit.correctAnswer) {
              return  Colors.red;
            }
            progress = 1.08;
          }
          return Colors.grey;
        }

        IconData getTheRightIcon() {
          return getTheRightColor() ==  Colors.red ? Icons.close : Icons.done;
        }

        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 15
            ),
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              border: Border.all(color: getTheRightColor()),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                      color: getTheRightColor() == Colors.grey
                          ? Colors.transparent
                          : getTheRightColor(),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: getTheRightColor())),
                  child: getTheRightColor() == Colors.grey
                      ? null
                      : Icon(getTheRightIcon(), size: 16),
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      '$text',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: BlocProvider.of<QuestionsCubit>(context)
                              .getRightColor(index),
                          fontSize: 16),
                    ),
                  ),
                ),
                Text(
                  '  -${index + 1}',
                  style: TextStyle(
                      color: BlocProvider.of<QuestionsCubit>(context)
                          .getRightColor(index),
                      fontSize: 16),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

