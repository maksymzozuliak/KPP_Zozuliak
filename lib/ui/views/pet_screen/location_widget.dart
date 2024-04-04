import 'package:adopt_a_pet/data/models/location.dart';
import 'package:adopt_a_pet/ui/widgets/text/body2_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/text/body1_text.dart';

class LocationWidget extends StatelessWidget {

  final Function() onTap;
  final Location selectedLocation;

  LocationWidget({
    super.key,
    required this.onTap,
    required this.selectedLocation,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              children: [
                Body2Text(
                    text: "Location",
                    textColor: const Color(0xFF5F5B5B)
                ),
                const Icon(
                    Icons.keyboard_arrow_down_rounded,
                  color: Color(0xFF5F5B5B),
                )
              ]
          ),
          Body1Text(
              text: selectedLocation.name,
              textColor: const Color(0xFF03063A)
          ),
        ],
      ),
    );
  }
}
