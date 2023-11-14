import 'package:flutter/material.dart';

void navigateTo(context ,widget ) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget ,
  ),
);

void navigateAndFinish(context ,widget ) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) => widget ,
  ),
      (route) {
    return false;
  },
);


void showSnackBar({required BuildContext context, required String text, required Color color})=>
    ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Center(child: Text(text,style: TextStyle(fontWeight: FontWeight.bold),)),
    duration: Duration(seconds: 1),
    backgroundColor:color,
  ),
);


String getGrade(double score) {
  String grade;
  if(score >= 0.85){
    grade = 'ممتاز';
  }else if(0.65 <= score && score < 0.85){
    grade = 'جيد جدًا';
  }else if(0.5 <= score && score < 0.65){
    grade = 'جيد';
  }else{
    grade = 'ضعيف';
  }


  return grade;
}



// void ShowToast({
//   required String text,
//   required ToastState state,
// }) => Fluttertoast.showToast(
//     msg: text,
//     toastLength: Toast.LENGTH_LONG,
//     gravity: ToastGravity.BOTTOM,
//     backgroundColor:chooseToastColor(state),
//     textColor: Colors.white,
//     fontSize: 16.0
// );
//
// enum ToastState {SUCCESS , ERROR }
//
// Color? chooseToastColor (ToastState state)
// {
//   Color color;
//   switch(state)
//   {
//     case ToastState.SUCCESS:
//       color = Colors.green;
//       break;
//     case ToastState.ERROR:
//       color = Colors.red;
//       break;
//   }
//   return color;
// }





