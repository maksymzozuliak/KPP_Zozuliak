import 'package:adopt_a_pet/api/dto/photo_dto.dart';

class OrganizationDto {
  final String id;
  final String name;
  final String? email;
  final String? phone;

  OrganizationDto({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  factory OrganizationDto.fromJson(Map<String, dynamic> json) {
    return OrganizationDto(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  }
}