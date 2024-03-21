class AttributesDto {
  final bool spayedNeutered;
  final bool houseTrained;
  final bool? declawed;
  final bool specialNeeds;
  final bool shotsCurrent;

  AttributesDto({
    required this.spayedNeutered,
    required this.houseTrained,
    required this.declawed,
    required this.specialNeeds,
    required this.shotsCurrent,
  });

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