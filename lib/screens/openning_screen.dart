import 'package:flutter/material.dart';
import 'login_screen.dart';

class Openningscreen extends StatelessWidget {
  const Openningscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/download.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 150),
                child: Image.asset(
                  'assets/images/quiz.png',
                  width: 190,
                  height: 200,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'ITI Quiz App',
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('We are creative , enjoy our app',
                      style: TextStyle(
                          fontFamily: "Pacifico",
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff4CAF50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Container(
                  height: 40,
                  width: 260,
                  color: Color(0xff4CAF50),
                  child: Center(
                    child: Text(
                      'Start',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}