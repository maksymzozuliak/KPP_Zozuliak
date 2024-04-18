import 'package:adopt_a_pet/api/dto/photo_dto.dart';
import 'package:adopt_a_pet/data/models/photo.dart';

/// Extension methods on [PhotoDto] for converting it to [Photo] model.
extension PhotoDtoExtensions on PhotoDto {
  /// Converts a [PhotoDto] instance to a [Photo] model.
  Photo toModel() {
    return Photo(
      small: small,
      medium: medium,
      large: large,
      full: full,
    );
  }
}
