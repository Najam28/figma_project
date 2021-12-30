import 'package:figma_project/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Started extends StatelessWidget {
  static const routeName = "started";
  const Started({Key? key}) : super(key: key);

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
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Image(
                image: AssetImage(
                  "assets/flutter.png",
                ),
                width: 310,
              ),
              Text(
                "Gets things done with TODO",
                style: GoogleFonts.mcLaren(
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: GoogleFonts.mcLaren(
                    textStyle: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
                  style: ElevatedButton.styleFrom(primary: Color(0xFF50C2C9)),
                  child: Container(
                    height: 60,
                    width: 300,
                    child: Center(
                      child: Text(
                        "Get Started",
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
              ),
            ],
          )
        ],
      )),
    );
  }
}
