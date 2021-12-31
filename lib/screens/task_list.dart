import 'package:figma_project/utils/list.dart';
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        height: 150,
                        width: 150,
                        color: Colors.white54,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/najam-preview.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Expanded(
                    child: Container(
                      color: Color(0xFFFF6F6F6),
                      child: ListView(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 20, right: 15.0),
                            child: Text(
                              "Good Afternoon",
                              textAlign: TextAlign.right,
                              style: GoogleFonts.mcLaren(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Image.asset(
                            "assets/clock.png",
                            height: 150,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: Text(
                              "Tasks List",
                              style: GoogleFonts.mcLaren(
                                textStyle: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: 215,
                              child: Card(
                                elevation: 30,
                                shadowColor: Colors.grey,
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  children: list,
                                ),
                              ),
                            ),
                          ),
                        ],
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
