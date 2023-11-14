import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/components/components.dart';
import '../shared/styles/colors.dart';
import 'next_home.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
   // SvgPicture.asset(
   // 'assets/images/bg.svg',
   // fit: BoxFit.fill,
   // ),
  List<String> images =[
    "assets/images/العقيده.svg",
    "assets/images/القران.svg",
    "assets/images/mohamed.svg",
    "assets/images/hadith.svg",
    "assets/images/prayers.svg",
    "assets/images/fasting.svg",
    "assets/images/purity1.svg",
    "assets/images/hajj.svg",
    "assets/images/العقيده.svg",
    "assets/images/العقيده. svg",
    "assets/images/العقيده.svg",
  ];
   List<String> names =[
     "( ش/علاء حامد)العقيدة",
     "القران كاملا",
     "السيرة النبوية",
     "الحديث",
     "الصلاة",
     "الصيام",
     "الطهاره",
     "الحج والعمره",
     "العقيدة",
     "العقيدة",
     "العقيدة",
   ];
   List<String> descriptions =[
     "description",
     "description",
     "description",
     "description",
     "description",
     "description",
     "description",
     "description",
     "description",
     "description",
     "description",
   ];


   Widget categoryCard(String image , String name,BuildContext context,int index)=>Padding(
     padding: const EdgeInsets.all(20.0),
     child: InkWell(//NextHome
       onTap: (){
         navigateTo(context, NextHome(title: name,id: index,));
       },
       child: Material(
         color: defaultColor,
         elevation: 10,
         borderRadius: BorderRadius.circular(20),
         child: Container(
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Material(
                   elevation: 5,
                   borderRadius: BorderRadius.circular(100),
                   child: Container(
                     width: 120,
                     height: 120,
                     padding: EdgeInsets.all(5.0),
                     child: ClipOval(
                       child: SvgPicture.asset(
                         image,
                         fit: BoxFit.fill,
                       ),
                     ),
                   ),
                 ),
               ),
               Center(child: Text(name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),)),
             ],
           ),
         ),
       ),
     ),
   );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:defaultColor,
        title: Text('Islamic Quiz'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemBuilder: (context , index) =>categoryCard(images[index],names[index],context,index),
          itemCount: names.length,
      ),
    );
  }
}
