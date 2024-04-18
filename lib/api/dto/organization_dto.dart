/// A data transfer object (DTO) representing an organization.
class OrganizationDto {
  /// The unique identifier of the organization.
  final String id;

  /// The name of the organization.
  final String name;

  /// The email address of the organization.
  final String? email;

  /// The phone number of the organization.
  final String? phone;

  /// Constructs an [OrganizationDto] instance.
  ///
  /// [id]: The unique identifier of the organization.
  /// [name]: The name of the organization.
  /// [email]: The email address of the organization.
  /// [phone]: The phone number of the organization.
  OrganizationDto({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  /// Constructs an [OrganizationDto] instance from a JSON map.
  ///
  /// [json]: A map representing the JSON data.
  ///
  /// Returns an [OrganizationDto] instance.
  factory OrganizationDto.fromJson(Map<String, dynamic> json) {
    return OrganizationDto(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  }
}
