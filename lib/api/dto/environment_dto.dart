/// A data transfer object (DTO) representing the environment in which a pet can thrive.
class EnvironmentDto {
  /// Indicates if the pet is compatible with children.
  final bool? children;

  /// Indicates if the pet is compatible with dogs.
  final bool? dogs;

  /// Indicates if the pet is compatible with cats.
  final bool? cats;

  /// Constructs an [EnvironmentDto] instance.
  ///
  /// [children]: Indicates if the pet is compatible with children.
  /// [dogs]: Indicates if the pet is compatible with dogs.
  /// [cats]: Indicates if the pet is compatible with cats.
  EnvironmentDto({
    required this.children,
    required this.dogs,
    required this.cats,
  });

  /// Constructs an [EnvironmentDto] instance from a JSON map.
  ///
  /// [json]: A map representing the JSON data.
  ///
  /// Returns an [EnvironmentDto] instance.
  factory EnvironmentDto.fromJson(Map<String, dynamic> json) {
    return EnvironmentDto(
      children: json['children'],
      dogs: json['dogs'],
      cats: json['cats'],
    );
  }
}
