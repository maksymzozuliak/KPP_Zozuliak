/// A data transfer object (DTO) representing a photo.
class PhotoDto {
  /// The URL of the small-sized photo.
  final String small;

  /// The URL of the medium-sized photo.
  final String medium;

  /// The URL of the large-sized photo.
  final String large;

  /// The URL of the full-sized photo.
  final String full;

  /// Constructs a [PhotoDto] instance.
  ///
  /// [small]: The URL of the small-sized photo.
  /// [medium]: The URL of the medium-sized photo.
  /// [large]: The URL of the large-sized photo.
  /// [full]: The URL of the full-sized photo.
  PhotoDto({
    required this.small,
    required this.medium,
    required this.large,
    required this.full,
  });

  /// Constructs a [PhotoDto] instance from a JSON map.
  ///
  /// [json]: A map representing the JSON data.
  ///
  /// Returns a [PhotoDto] instance.
  factory PhotoDto.fromJson(Map<String, dynamic> json) {
    return PhotoDto(
      small: json['small'],
      medium: json['medium'],
      large: json['large'],
      full: json['full'],
    );
  }
}
