import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../shared/components/components.dart';
import '../shared/styles/colors.dart';
import 'home_screen/homa_screen.dart';
import 'next_home.dart';

// ignore: must_be_immutable
class PreviousHome extends StatelessWidget {
  PreviousHome({Key? key}) : super(key: key);
  // SvgPicture.asset(
  // 'assets/images/bg.svg',
  // fit: BoxFit.fill,
  // ),
  List<String> images =[
    "assets/images/photo_alaa_hamed.jpg",
    "assets/images/previous_two.jpg",

  ];
  List<String> names =[
    "الدورات العلمية للمهندس علاء حامد",
    "الدورات العلمية (اسراء فايز)",

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
    child: InkWell(
      onTap: (){
        navigateTo(context, HomeScreen(title: name,id: index,));
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
                    // child: Image.asset(image),
                    // child: Image(
                    //   image: AssetImage(image),
                    //   fit: BoxFit.fill,
                    // ),
                    // clipBehavior: Clip.hardEdge,
                    child: ClipOval(
                      child: Image(
                        image: AssetImage(image),
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
