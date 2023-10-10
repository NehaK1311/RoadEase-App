import 'package:drivers_app/authentication/login_screen.dart';
import 'package:drivers_app/authentication/signup_screen.dart';
import 'package:drivers_app/main_Screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
//In Dart, dart:async is used to import the core asynchronous programming library, which provides classes and utilities for working with asynchronous operations, including Futures, Streams, and Timers.
class MySplashScreen extends StatefulWidget {

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}



class _MySplashScreenState extends State<MySplashScreen> {

  startTimer()
  {
    Timer(const Duration(seconds: 3),() async {
      //send user to home screen
      Navigator.push(context,MaterialPageRoute(builder:(c)=>MainScreen()));

    });//Timer
  }

  @override
  //Whenever app start , this function get executed
  void initState(){

    super.initState();
    startTimer();
  }
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo.jpg"),

              const SizedBox(height:10,),


              const Text(
                "Uber & inDriver Clone App",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
