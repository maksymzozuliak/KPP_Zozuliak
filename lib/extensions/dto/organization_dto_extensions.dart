import 'package:adopt_a_pet/api/dto/organization_dto.dart';
import 'package:adopt_a_pet/data/models/organization.dart';
import 'package:adopt_a_pet/extensions/dto/photo_dto_extensions.dart';

/// Extension methods on [OrganizationDto] for converting it to [Organization] model.
extension OrganizationDtoExtensions on OrganizationDto {
  /// Converts an [OrganizationDto] instance to an [Organization] model.
  Organization toModel() {
    return Organization(
      id: id,
      name: name,
      email: email,
      phone: phone,
    );
  }
}
