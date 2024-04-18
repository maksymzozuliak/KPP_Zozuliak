/// A model class representing a photo.
class Photo {
  /// The URL of the small-sized photo.
  final String small;

  /// The URL of the medium-sized photo.
  final String medium;

  /// The URL of the large-sized photo.
  final String large;

  /// The URL of the full-sized photo.
  final String full;

  /// Constructs a [Photo] instance.
  ///
  /// [small]: The URL of the small-sized photo.
  /// [medium]: The URL of the medium-sized photo.
  /// [large]: The URL of the large-sized photo.
  /// [full]: The URL of the full-sized photo.
  Photo({
    required this.small,
    required this.medium,
    required this.large,
    required this.full,
  });
}
