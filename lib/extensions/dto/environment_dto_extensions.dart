import 'package:adopt_a_pet/api/dto/environment_dto.dart';
import 'package:adopt_a_pet/data/models/environment.dart';

extension EnvironmentDtoExtensions on EnvironmentDto {
  Environment toModel() {
    return Environment(
      children: children,
      dogs: dogs,
      cats: cats,
    );
  }
}
