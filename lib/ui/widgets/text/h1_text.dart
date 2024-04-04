import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class H1Text extends StatelessWidget {
  final String text;
  final Color textColor;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;

  H1Text({
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
          fontSize: 24,
          fontWeight: FontWeight.w600,
          decoration: textDecoration,
        ),
      ),
    );
  }
}