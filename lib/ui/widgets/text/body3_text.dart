import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body3Text extends StatelessWidget {
  final String text;
  final Color textColor;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final int? maxLines;
  final TextOverflow? textOverflow;

  Body3Text({
    required this.text,
    required this.textColor,
    this.textAlign,
    this.textDecoration,
    this.maxLines,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: textOverflow,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: textColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          decoration: textDecoration,
        ),
      ),
    );
  }
}