import 'package:adopt_a_pet/api/dto/contact_dto.dart';
import 'package:adopt_a_pet/data/models/contact.dart';
import 'package:adopt_a_pet/extensions/dto/address_dto_extensions.dart';

extension ContactDtoExtensions on ContactDto {
  Contact toModel() {
    final address = this.address.toModel();
    return Contact(
      email: email,
      phone: phone,
      address: address,
    );
  }
}
