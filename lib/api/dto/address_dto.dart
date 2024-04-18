/// A data transfer object (DTO) representing an address.
class AddressDto {

  /// The first line of the address.
  final String? address1;

  /// The second line of the address.
  final String? address2;

  /// The city of the address.
  final String? city;

  /// The state or region of the address.
  final String? state;

  /// The postal code of the address.
  final String? postcode;

  /// The country of the address.
  final String? country;

  /// Constructs an [AddressDto] instance.
  ///
  /// [address1]: The first line of the address.
  /// [address2]: The second line of the address.
  /// [city]: The city of the address.
  /// [state]: The state or region of the address.
  /// [postcode]: The postal code of the address.
  /// [country]: The country of the address.
  AddressDto({
    required this.address1,
    required this.address2,
    required this.city,
    required this.state,
    required this.postcode,
    required this.country,
  });

  /// Constructs an [AddressDto] instance from a JSON map.
  ///
  /// [json]: A map representing the JSON data.
  ///
  /// Returns an [AddressDto] instance.
  factory AddressDto.fromJson(Map<String, dynamic> json) {
    return AddressDto(
      address1: json['address1'],
      address2: json['address2'],
      city: json['city'],
      state: json['state'],
      postcode: json['postcode'],
      country: json['country'],
    );
  }
}
