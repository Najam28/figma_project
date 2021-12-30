import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskList extends StatelessWidget {
  static const routeName = "task_list";
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF50C2C9).withOpacity(0.8),
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
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/najam.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Najam Ul Hassan",
                    style: GoogleFonts.mcLaren(
                      textStyle: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
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
