import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'login/login.dart';

class teacher_login extends StatelessWidget {
  const teacher_login({super.key});

  static const String routeName = "teacher_login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Image(
                  image: AssetImage(
                    "images/bakegrond.png",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          loginTap()
        ],
      ),
    );
  }
}
