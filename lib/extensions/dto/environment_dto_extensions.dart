import 'package:adopt_a_pet/api/dto/environment_dto.dart';
import 'package:adopt_a_pet/data/models/environment.dart';

/// Extension methods on [EnvironmentDto] for converting it to [Environment] model.
extension EnvironmentDtoExtensions on EnvironmentDto {
  /// Converts an [EnvironmentDto] instance to an [Environment] model.
  Environment toModel() {
    return Environment(
      children: children,
      dogs: dogs,
      cats: cats,
    );
  }
}
