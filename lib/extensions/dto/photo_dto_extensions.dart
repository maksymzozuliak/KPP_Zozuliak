import 'package:adopt_a_pet/api/dto/photo_dto.dart';
import 'package:adopt_a_pet/data/models/photo.dart';

extension PhotoDtoExtensions on PhotoDto {
  Photo toModel() {
    return Photo(
      small: small,
      medium: medium,
      large: large,
      full: full,
    );
  }
}
