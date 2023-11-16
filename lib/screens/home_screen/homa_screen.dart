import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/components/components.dart';
import '../../shared/styles/colors.dart';
import '../next_home.dart';
import 'list_of_home_screen.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  final int id;

//namesOfTheLecturesOfFaith
  HomeScreen({
    super.key,
    required this.title,
    required this.id,
  });

  Widget categoryCard(
          String image, String name, BuildContext context, int index) =>
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: InkWell(
          onTap: () {
            navigateTo(
              context,
              NextHome(
                title: name,
                id: index,
                idH: id,
              ),
            );
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
                  Center(
                      child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
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
        backgroundColor: defaultColor,
        elevation: 0,
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => categoryCard(
            mixHomeImages[id][index], mixHomeName[id][index], context, index),
        itemCount: mixHomeName[id].length,
      ),
    );
  }
}
