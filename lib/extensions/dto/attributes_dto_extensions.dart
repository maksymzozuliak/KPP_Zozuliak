import 'package:adopt_a_pet/api/dto/attributes_dto.dart';
import 'package:adopt_a_pet/data/models/attributes.dart';

/// Extension methods on [AttributesDto] for converting it to [Attributes] model.
extension AttrubutesDtoExtensions on AttributesDto {
  /// Converts an [AttributesDto] instance to an [Attributes] model.
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
