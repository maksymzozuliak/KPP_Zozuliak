import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body5Text extends StatelessWidget {
  final String text;
  final Color textColor;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;

  Body5Text({
    required this.text,
    required this.textColor,
    this.textAlign,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: textColor,
          fontSize: 10,
          fontWeight: FontWeight.w400,
          decoration: textDecoration,
        ),
      ),
    );
  }
}