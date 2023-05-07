import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, this.isColored = false}) : super(key: key);

  final bool isColored;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/company.jpeg",
          width: 150.0,
          height: 130.0,
          fit: BoxFit.cover,
        ),
        Text(
          'WELCOME TO MY BIODATA',
          style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: isColored ? Color.fromARGB(255, 14, 3, 11) : Colors.white,
          ),
        ),
        Text(
          'RAKA PRAMUDIYA RAMADANI',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: isColored ? const Color(0xffb8b8b8) : Colors.white,
          ),
        ),
      ],
    );
  }
}