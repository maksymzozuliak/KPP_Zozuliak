class PhotoDto {
  final String small;
  final String medium;
  final String large;
  final String full;

  PhotoDto({
    required this.small,
    required this.medium,
    required this.large,
    required this.full,
  });

  factory PhotoDto.fromJson(Map<String, dynamic> json) {
    return PhotoDto(
      small: json['small'],
      medium: json['medium'],
      large: json['large'],
      full: json['full'],
    );
  }
}