import 'package:adopt_a_pet/ui/views/pet_screen/pet_type_list/pet_type_item.dart';
import 'package:flutter/material.dart';
import '../../../../data/models/pet_type_enum.dart';
import 'package:google_fonts/google_fonts.dart';

class PetTypeList extends StatelessWidget {
  final List<PetType> categoryList;
  final Function(PetType) onPetTypeTap;
  final PetType selectedPetType;

  const PetTypeList({
    required this.categoryList,
    required this.onPetTypeTap,
    required this.selectedPetType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 4.0),
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 12.0),
        itemBuilder: (context, index) {
          return PetTypeItem(
            petType: categoryList[index],
            onPetTypeTap: onPetTypeTap,
            selectedPetType: selectedPetType,
          );
        },
      ),
    );
  }
}
