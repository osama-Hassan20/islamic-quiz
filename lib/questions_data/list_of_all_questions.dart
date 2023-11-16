
import 'package:islamic_quiz/questions_data/prayers/list_of_title_data.dart';
import 'package:islamic_quiz/questions_data/purity/list_of_title_data.dart';
import 'Quran/list_of_title_data.dart';
import 'alaa_hamed/Islamic_faith/list_of_title_data.dart';
import 'alaa_hamed/altariq_aly_allah/list_of_title_data.dart';
import 'alaa_hamed/purity_h/list_of_title_data.dart';
import 'fasting/list_of_title_data.dart';
import 'hadith/list_of_title_data.dart';
import 'hujj/list_of_title_data.dart';
import 'mohamed/list_of_title_data.dart';

List<List> mixAllQuestions =[
  // mixFaithQuestions,
  mixQuranQuestions,
  mixMohamedQuestions,
  mixHadithQuestions,
  mixPrayersQuestions,
  mixFastingQuestions,
  mixPurityQuestions,
  mixHujjQuestions,
];

List<List> mixAllNamesQuestions =[
  // namesOfTheLecturesOfFaith,
  namesOfThePartsOfQuran,
  namesOfThePartsOfMohamed,
  namesOfThePartsOfHadith,
  namesOfThePartsOfPrayers,
  namesOfThePartsOfFasting,
  namesOfThePartsOfPurity,
  namesOfThePartsOfHujj,
];




List<List> mixAllQuestionsTwo =[
  mixFaithQuestions,
  mixPurityHQuestions,
  mixPathToAllahQuestions,

];

List<List> mixAllNamesQuestionsTwo =[
  namesOfTheLecturesOfFaith,
  namesOfThePartsOfPurityH,
  namesOfThePartsOfPathToAllah,

];



List<List> mixAllTotalQuestions =[

  mixAllQuestionsTwo,
  mixAllQuestions,
];

List<List> mixAllTotalNamesQuestions =[

  mixAllNamesQuestionsTwo,
  mixAllNamesQuestions,
];



