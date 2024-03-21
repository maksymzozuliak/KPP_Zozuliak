import 'package:adopt_a_pet/api/dto/pet_colors_dto.dart';
import 'package:adopt_a_pet/data/models/pet_colors.dart';

extension PetColorsDtoExtensions on PetColorsDto {
  PetColors toModel() {
    return PetColors(
      primary: primary,
      secondary: secondary,
      tertiary: tertiary,
    );
  }
}
