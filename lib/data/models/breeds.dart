/// A model class representing the breeds of a pet.
class Breeds {
  /// The primary breed of the pet.
  final String? primary;

  /// The secondary breed of the pet.
  final String? secondary;

  /// Indicates whether the pet is a mixed breed.
  final bool mixed;

  /// Indicates whether the breed of the pet is unknown.
  final bool unknown;

  /// Constructs a [Breeds] instance.
  ///
  /// [primary]: The primary breed of the pet.
  /// [secondary]: The secondary breed of the pet.
  /// [mixed]: Indicates whether the pet is a mixed breed.
  /// [unknown]: Indicates whether the breed of the pet is unknown.
  Breeds({
    required this.primary,
    required this.secondary,
    required this.mixed,
    required this.unknown,
  });
}
