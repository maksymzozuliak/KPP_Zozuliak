/// A model class representing an address.
class Address {
  /// The first line of the address.
  final String? address1;

  /// The second line of the address.
  final String? address2;

  /// The city of the address.
  final String? city;

  /// The state of the address.
  final String? state;

  /// The postcode of the address.
  final String? postcode;

  /// The country of the address.
  final String? country;

  /// Constructs an [Address] instance.
  ///
  /// [address1]: The first line of the address.
  /// [address2]: The second line of the address.
  /// [city]: The city of the address.
  /// [state]: The state of the address.
  /// [postcode]: The postcode of the address.
  /// [country]: The country of the address.
  Address({
    required this.address1,
    required this.address2,
    required this.city,
    required this.state,
    required this.postcode,
    required this.country,
  });
}
