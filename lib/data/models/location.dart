/// A model class representing a location.
class Location {
  /// The name of the location.
  final String name;

  /// The search name of the location.
  final String? searchName;

  /// Constructs a [Location] instance.
  ///
  /// [name]: The name of the location.
  /// [searchName]: The search name of the location.
  Location({
    required this.name,
    required this.searchName,
  });
}
