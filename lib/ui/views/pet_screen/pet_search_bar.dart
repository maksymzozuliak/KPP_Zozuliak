import 'dart:ffi';

import 'package:adopt_a_pet/ui/views/pet_screen/location_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PetSearchBar extends StatelessWidget {

  final double height;

  const PetSearchBar(
    {super.key, required this.height}
  );

  get textEditingController => null;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: textEditingController,
              textAlign: TextAlign.left,
              cursorColor: Color(0xFF03063A),
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Color(0xFFCAC9C9),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                contentPadding: const EdgeInsets.only(left: 16, right: 16, bottom: 18),
                border: InputBorder.none,
              ),
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Color(0xFF03063A),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Handle search action
            },
            child: Container(
              height: height,
              width: height,
              decoration: BoxDecoration(
                color: const Color(0xFF827397),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}