import 'package:figma_project/screens/home.dart';
import 'package:figma_project/screens/login_screen.dart';
import 'package:figma_project/screens/signup_screen.dart';
import 'package:figma_project/screens/splash.dart';
import 'package:figma_project/screens/started.dart';
import 'package:figma_project/screens/task_list.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) {
          return const Splash();
        },
        Home.routeName: (context) => Home(),
        Started.routeName: (context) => Started(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        TaskList.routeName: (context) => TaskList(),
      },
    );
  }
}
