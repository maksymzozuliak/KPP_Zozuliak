/// A data transfer object (DTO) representing attributes of a pet.
class AttributesDto {
  /// Indicates if the pet is spayed/neutered.
  final bool spayedNeutered;

  /// Indicates if the pet is house trained.
  final bool houseTrained;

  /// Indicates if the pet is declawed.
  final bool? declawed;

  /// Indicates if the pet has special needs.
  final bool specialNeeds;

  /// Indicates if the pet's shots are current.
  final bool shotsCurrent;

  /// Constructs an [AttributesDto] instance.
  ///
  /// [spayedNeutered]: Indicates if the pet is spayed/neutered.
  /// [houseTrained]: Indicates if the pet is house trained.
  /// [declawed]: Indicates if the pet is declawed.
  /// [specialNeeds]: Indicates if the pet has special needs.
  /// [shotsCurrent]: Indicates if the pet's shots are current.
  AttributesDto({
    required this.spayedNeutered,
    required this.houseTrained,
    required this.declawed,
    required this.specialNeeds,
    required this.shotsCurrent,
  });

  /// Constructs an [AttributesDto] instance from a JSON map.
  ///
  /// [json]: A map representing the JSON data.
  ///
  /// Returns an [AttributesDto] instance.
  factory AttributesDto.fromJson(Map<String, dynamic> json) {
    return AttributesDto(
      spayedNeutered: json['spayed_neutered'],
      houseTrained: json['house_trained'],
      declawed: json['declawed'],
      specialNeeds: json['special_needs'],
      shotsCurrent: json['shots_current'],
    );
  }
}
