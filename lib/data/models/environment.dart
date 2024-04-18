/// A model class representing environmental preferences for a pet.
class Environment {
  /// Indicates whether the pet is comfortable with children.
  final bool? children;

  /// Indicates whether the pet is comfortable with dogs.
  final bool? dogs;

  /// Indicates whether the pet is comfortable with cats.
  final bool? cats;

  /// Constructs an [Environment] instance.
  ///
  /// [children]: Indicates whether the pet is comfortable with children.
  /// [dogs]: Indicates whether the pet is comfortable with dogs.
  /// [cats]: Indicates whether the pet is comfortable with cats.
  Environment({
    required this.children,
    required this.dogs,
    required this.cats,
  });
}
