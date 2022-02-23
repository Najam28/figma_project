import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final icon = Icon(Icons.check_box_outline_blank);
final List<Widget> list = [
  Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 12),
        child: Text(
          "Tasks List",
          style: GoogleFonts.mcLaren(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 170, top: 12),
        child: Icon(
          Icons.add_circle_outline,
          color: Colors.lightBlue,
          size: 30,
        ),
      ),
    ],
  ),
  Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 15),
        child: icon,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 12),
        child: Text(
          "Flutter Developer",
          style: GoogleFonts.plaster(
            fontSize: 20,
          ),
        ),
      ),
    ],
  ),
  Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 15),
        child: icon,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 12),
        child: Text(
          "Web Development",
          style: GoogleFonts.plaster(
            fontSize: 20,
          ),
        ),
      ),
    ],
  ),
  Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 15),
        child: icon,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 12),
        child: Text(
          "Machine Learning",
          style: GoogleFonts.plaster(
            fontSize: 20,
          ),
        ),
      ),
    ],
  ),
  Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 15),
        child: icon,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 12),
        child: Text(
          "WordPress",
          style: GoogleFonts.plaster(
            fontSize: 20,
          ),
        ),
      ),
    ],
  ),
];
