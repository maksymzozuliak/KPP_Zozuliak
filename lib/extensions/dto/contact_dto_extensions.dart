import 'package:adopt_a_pet/api/dto/contact_dto.dart';
import 'package:adopt_a_pet/data/models/contact.dart';
import 'package:adopt_a_pet/extensions/dto/address_dto_extensions.dart';

/// Extension methods on [ContactDto] for converting it to [Contact] model.
extension ContactDtoExtensions on ContactDto {
  /// Converts a [ContactDto] instance to a [Contact] model.
  Contact toModel() {
    final address = this.address.toModel();
    return Contact(
      email: email,
      phone: phone,
      address: address,
    );
  }
}
