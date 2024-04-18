/// A data transfer object (DTO) representing the breeds of a pet.
class BreedsDto {
  /// The primary breed of the pet.
  final String? primary;

  /// The secondary breed of the pet.
  final String? secondary;

  /// Indicates if the pet is a mixed breed.
  final bool mixed;

  /// Indicates if the breed of the pet is unknown.
  final bool unknown;

  /// Constructs a [BreedsDto] instance.
  ///
  /// [primary]: The primary breed of the pet.
  /// [secondary]: The secondary breed of the pet.
  /// [mixed]: Indicates if the pet is a mixed breed.
  /// [unknown]: Indicates if the breed of the pet is unknown.
  BreedsDto({
    required this.primary,
    required this.secondary,
    required this.mixed,
    required this.unknown,
  });

  /// Constructs a [BreedsDto] instance from a JSON map.
  ///
  /// [json]: A map representing the JSON data.
  ///
  /// Returns a [BreedsDto] instance.
  factory BreedsDto.fromJson(Map<String, dynamic> json) {
    return BreedsDto(
      primary: json['primary'],
      secondary: json['secondary'],
      mixed: json['mixed'],
      unknown: json['unknown'],
    );
  }
}
