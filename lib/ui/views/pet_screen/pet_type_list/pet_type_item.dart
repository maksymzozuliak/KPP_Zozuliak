import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../data/models/pet_type_enum.dart';
import '../../../widgets/text/body4_text.dart';

class PetTypeItem extends StatelessWidget {
  final PetType petType;
  final Function(PetType) onPetTypeTap;
  final PetType selectedPetType;
  final bool isSelected;

  const PetTypeItem({
    required this.petType,
    required this.onPetTypeTap,
    required this.selectedPetType,
  }) : isSelected = petType == selectedPetType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isSelected ? null : () => onPetTypeTap(petType),
      child: Container(
          padding: const EdgeInsets.fromLTRB(6, 6, 8, 6),
          decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF827397) : Colors.white,
              borderRadius: BorderRadius.circular(32.0),
              boxShadow: isSelected ? null : [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.15),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 0),
                ),
              ]),
          child: Row(
            children: [
              Image.asset(
                height: 28.0,
                width: 28.0,
                petType.icon,
              ),
              const SizedBox(width: 4.0),
              Body4Text(
                text: petType.name,
                textColor: const Color(0xFF5F5B5B),
              )
            ],
          )),
    );
  }
}
