import 'package:adopt_a_pet/api/dto/address_dto.dart';
import 'package:adopt_a_pet/data/models/address.dart';

/// Extension methods on [AddressDto] for converting it to [Address] model.
extension AddressDtoExtensions on AddressDto {
  /// Converts an [AddressDto] instance to an [Address] model.
  Address toModel() {
    return Address(
      address1: address1,
      address2: address2,
      city: city,
      state: state,
      postcode: postcode,
      country: country,
    );
  }
}
