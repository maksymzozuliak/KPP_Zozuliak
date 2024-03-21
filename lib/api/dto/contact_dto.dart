import 'address_dto.dart';

class ContactDto {
  final String? email;
  final String? phone;
  final AddressDto address;

  ContactDto({
    required this.email,
    required this.phone,
    required this.address,
  });

  factory ContactDto.fromJson(Map<String, dynamic> json) {
    return ContactDto(
      email: json['email'],
      phone: json['phone'],
      address: AddressDto.fromJson(json['address']),
    );
  }
}