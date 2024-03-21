import 'package:adopt_a_pet/api/dto/address_dto.dart';
import 'package:adopt_a_pet/data/models/address.dart';

extension AddressDtoExtensions on AddressDto {
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
