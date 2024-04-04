import 'package:adopt_a_pet/ui/widgets/text/body4_text.dart';
import 'package:adopt_a_pet/ui/widgets/text/body5_text.dart';
import 'package:flutter/material.dart';

class PetInfoGroupItem extends StatelessWidget {
  final String value;
  final String label;

  const PetInfoGroupItem({
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      height: 76,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: const Color(0xFFB4AEAE),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Body4Text(
              text: value,
              maxLines: 2,
              textOverflow: TextOverflow.ellipsis,
              textColor: const Color(0xFF827397),
            ),
            const SizedBox(
              height: 8,
            ),
            Body5Text(
              text: label,
              textColor: const Color(0xFFB4AEAE),
            )
          ],
        ),
      ),
    );
  }
}
