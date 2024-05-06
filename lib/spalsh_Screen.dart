import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home_login.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  static const String routeName = "splash";

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => home_login()));
      //home_login
      //guest_login
    });
  }

  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(

          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            "images/S.Screen.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

  }
}
