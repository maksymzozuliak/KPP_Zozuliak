/// A model class representing attributes of a pet.
class Attributes {
  /// Indicates whether the pet is spayed or neutered.
  final bool spayedNeutered;

  /// Indicates whether the pet is house trained.
  final bool houseTrained;

  /// Indicates whether the pet is declawed.
  final bool? declawed;

  /// Indicates whether the pet has special needs.
  final bool specialNeeds;

  /// Indicates whether the pet's shots are current.
  final bool shotsCurrent;

  /// Constructs an [Attributes] instance.
  ///
  /// [spayedNeutered]: Indicates whether the pet is spayed or neutered.
  /// [houseTrained]: Indicates whether the pet is house trained.
  /// [declawed]: Indicates whether the pet is declawed.
  /// [specialNeeds]: Indicates whether the pet has special needs.
  /// [shotsCurrent]: Indicates whether the pet's shots are current.
  Attributes({
    required this.spayedNeutered,
    required this.houseTrained,
    required this.declawed,
    required this.specialNeeds,
    required this.shotsCurrent,
  });
}
