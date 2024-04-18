/// A model class representing the colors of a pet.
class PetColors {
  /// The primary color of the pet.
  final String? primary;

  /// The secondary color of the pet.
  final String? secondary;

  /// The tertiary color of the pet.
  final String? tertiary;

  /// Constructs a [PetColors] instance.
  ///
  /// [primary]: The primary color of the pet.
  /// [secondary]: The secondary color of the pet.
  /// [tertiary]: The tertiary color of the pet.
  PetColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });
}
