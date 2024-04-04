import 'package:adopt_a_pet/api/dto/organization_dto.dart';
import 'package:adopt_a_pet/data/models/organization.dart';
import 'package:adopt_a_pet/extensions/dto/photo_dto_extensions.dart';

extension OrganizationDtoExtensions on OrganizationDto {
  Organization toModel() {
    return Organization(
      id: id,
      name: name,
      email: email,
      phone: phone,
    );
  }
}
