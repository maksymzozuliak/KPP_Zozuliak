class EnvironmentDto {
  final bool? children;
  final bool? dogs;
  final bool? cats;

  EnvironmentDto({
    required this.children,
    required this.dogs,
    required this.cats,
  });

  factory EnvironmentDto.fromJson(Map<String, dynamic> json) {
    return EnvironmentDto(
      children: json['children'],
      dogs: json['dogs'],
      cats: json['cats'],
    );
  }
}