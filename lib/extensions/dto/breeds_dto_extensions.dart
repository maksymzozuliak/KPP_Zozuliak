import 'package:adopt_a_pet/api/dto/breeds_dto.dart';
import 'package:adopt_a_pet/data/models/breeds.dart';

/// Extension methods on [BreedsDto] for converting it to [Breeds] model.
extension BreedsDtoExtensions on BreedsDto {
  /// Converts a [BreedsDto] instance to a [Breeds] model.
  Breeds toModel() {
    return Breeds(
      primary: primary,
      secondary: secondary,
      mixed: mixed,
      unknown: unknown,
    );
  }
}
