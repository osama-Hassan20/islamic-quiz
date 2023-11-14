import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_quiz/screens/homa_screen.dart';
import 'package:islamic_quiz/screens/openning_screen.dart';
import 'package:islamic_quiz/shared/components/constant.dart';
import 'package:islamic_quiz/shared/network/local/cache_helper.dart';

import 'layout/cubit/cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionsCubit(),
      child: MaterialApp(
        title: 'Quiz App',
        debugShowCheckedModeBanner: false,
        // theme: ThemeData.dark(),
        // home: const WelcomeScreen(),
        // Directionality(
        //     textDirection: TextDirection.ltr,
        //   child: startWidget,
        // ),
        home:  HomeScreen(),
      ),
    );
  }
}