import 'package:adopt_a_pet/data/models/organization.dart';
import 'package:adopt_a_pet/ui/views/pet_info_screen/pet_info_group/pet_info_group_item.dart';
import 'package:adopt_a_pet/ui/views/pet_screen/pet_grid/pet_item.dart';
import 'package:adopt_a_pet/ui/widgets/text/body3_text.dart';
import 'package:adopt_a_pet/ui/widgets/text/body5_text.dart';
import 'package:flutter/material.dart';
import '../../../../data/models/pet_type_enum.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../data/models/pet.dart';

class OrganizationInfo extends StatelessWidget {
  final Organization organization;
  final Function() onPhoneTap;
  final Function() onEmailTap;

  const OrganizationInfo({
    required this.organization,
    required this.onPhoneTap,
    required this.onEmailTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Body5Text(
                text: "Owned by",
                textColor: const Color(0xFFB4AEAE),
              ),
              Body3Text(
                text: organization.name,
                textColor: const Color(0xFF5F5B5B),
                maxLines: 1,
                textOverflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        organization.phone == null
            ? const SizedBox()
            : GestureDetector(
                onTap: () => onPhoneTap(),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Color(0xFF827397),
                  ),
                  height: 35,
                  width: 35,
                  child: const Icon(
                    Icons.call_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
        const SizedBox(
          width: 12,
        ),
        organization.email == null
            ? const SizedBox()
            : GestureDetector(
                onTap: () => onEmailTap(),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Color(0xFF827397),
                  ),
                  height: 35,
                  width: 35,
                  child: const Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                ),
              )
      ],
    );
  }
}
