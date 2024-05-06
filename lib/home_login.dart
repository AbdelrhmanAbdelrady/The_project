import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'modules/Choose_your_option_login/guest_login.dart';
import 'modules/Choose_your_option_login/student_login.dart';
import 'modules/Choose_your_option_login/teacher_login.dart';

class home_login extends StatelessWidget {
  const home_login({Key? key}) : super(key: key);

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
                image: AssetImage("images/bakegrond.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 100),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => student_login()),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xffF5EF27),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: ImageIcon(
                            AssetImage("images/icon/Student Male.png"),
                            size: 50,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Student",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => teacher_login()),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xffF5EF27),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: ImageIcon(
                            AssetImage("images/icon/Tuition.png"),
                            size: 50,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Tuition",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => guest_login()),
                );
              },
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xffF5EF27),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: ImageIcon(
                        AssetImage("images/icon/Person.png"),
                        size: 50,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Guest",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
