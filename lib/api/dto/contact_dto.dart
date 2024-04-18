import 'address_dto.dart';

/// A data transfer object (DTO) representing contact information.
class ContactDto {
  /// The email address of the contact.
  final String? email;

  /// The phone number of the contact.
  final String? phone;

  /// The address of the contact.
  final AddressDto address;

  /// Constructs a [ContactDto] instance.
  ///
  /// [email]: The email address of the contact.
  /// [phone]: The phone number of the contact.
  /// [address]: The address of the contact.
  ContactDto({
    required this.email,
    required this.phone,
    required this.address,
  });

  /// Constructs a [ContactDto] instance from a JSON map.
  ///
  /// [json]: A map representing the JSON data.
  ///
  /// Returns a [ContactDto] instance.
  factory ContactDto.fromJson(Map<String, dynamic> json) {
    return ContactDto(
      email: json['email'],
      phone: json['phone'],
      address: AddressDto.fromJson(json['address']),
    );
  }
}
