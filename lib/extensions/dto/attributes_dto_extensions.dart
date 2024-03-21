import 'package:adopt_a_pet/api/dto/attributes_dto.dart';
import 'package:adopt_a_pet/data/models/attributes.dart';

extension AttrubutesDtoExtensions on AttributesDto {
  Attributes toModel() {
    return Attributes(
      spayedNeutered: spayedNeutered,
      houseTrained: houseTrained,
      declawed: declawed,
      specialNeeds: specialNeeds,
      shotsCurrent: shotsCurrent,
    );
  }
}
