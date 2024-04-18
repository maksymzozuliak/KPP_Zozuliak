import 'package:adopt_a_pet/api/dto/pet_colors_dto.dart';
import 'package:adopt_a_pet/data/models/pet_colors.dart';

/// Extension methods on [PetColorsDto] for converting it to [PetColors] model.
extension PetColorsDtoExtensions on PetColorsDto {
  /// Converts a [PetColorsDto] instance to a [PetColors] model.
  PetColors toModel() {
    return PetColors(
      primary: primary,
      secondary: secondary,
      tertiary: tertiary,
    );
  }
}
