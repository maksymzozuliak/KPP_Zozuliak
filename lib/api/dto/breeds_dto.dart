class BreedsDto {
  final String? primary;
  final String? secondary;
  final bool mixed;
  final bool unknown;

  BreedsDto({
    required this.primary,
    required this.secondary,
    required this.mixed,
    required this.unknown,
  });

  factory BreedsDto.fromJson(Map<String, dynamic> json) {
    return BreedsDto(
      primary: json['primary'],
      secondary: json['secondary'],
      mixed: json['mixed'],
      unknown: json['unknown'],
    );
  }
}