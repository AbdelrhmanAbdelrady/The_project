import 'package:flutter/material.dart';
import 'package:the_project/spalsh_Screen.dart';

void main() {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: splash_screen.routeName,
        routes: {splash_screen.routeName: (context) => splash_screen()});
  }
}
