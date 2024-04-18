/// A data transfer object (DTO) representing the colors of a pet.
class PetColorsDto {
  /// The primary color of the pet.
  final String? primary;

  /// The secondary color of the pet.
  final String? secondary;

  /// The tertiary color of the pet.
  final String? tertiary;

  /// Constructs a [PetColorsDto] instance.
  ///
  /// [primary]: The primary color of the pet.
  /// [secondary]: The secondary color of the pet.
  /// [tertiary]: The tertiary color of the pet.
  PetColorsDto({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });

  /// Constructs a [PetColorsDto] instance from a JSON map.
  ///
  /// [json]: A map representing the JSON data.
  ///
  /// Returns a [PetColorsDto] instance.
  factory PetColorsDto.fromJson(Map<String, dynamic> json) {
    return PetColorsDto(
      primary: json['primary'],
      secondary: json['secondary'],
      tertiary: json['tertiary'],
    );
  }
}
