import 'package:adopt_a_pet/api/dto/breeds_dto.dart';
import 'package:adopt_a_pet/data/models/breeds.dart';

extension BreedsDtoExtensions on BreedsDto {
  Breeds toModel() {
    return Breeds(
      primary: primary,
      secondary: secondary,
      mixed: mixed,
      unknown: unknown,
    );
  }
}
