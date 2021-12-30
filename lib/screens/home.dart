import 'package:figma_project/screens/started.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const routeName = "/home";
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: SafeArea(
        child: Started(),
      ),
    );
  }
}
