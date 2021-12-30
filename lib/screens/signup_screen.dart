import 'package:figma_project/screens/task_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "sign_up";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(-1.3, -1.5),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFB0E9E6).withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Align(
              alignment: Alignment(-2, -1.2),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFB0E9E6).withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Text(
                    "Welcome Back!",
                    style: GoogleFonts.mcLaren(
                      textStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image(
                      image: AssetImage("assets/notification.png"),
                      height: 200,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      inputDecorationTheme: InputDecorationTheme(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 25),
                          child: Container(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Enter your email",
                                labelText: "Email",
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 15),
                          child: Container(
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Enter your password",
                                labelText: "password",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(TaskList.routeName);
                    },
                    style: ElevatedButton.styleFrom(primary: Color(0xFF50C2C9)),
                    child: Container(
                      height: 60,
                      width: 300,
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.mcLaren(
                            textStyle: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
