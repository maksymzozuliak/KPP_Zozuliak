import 'package:adopt_a_pet/presentation/events/pet_info_screen/pet_info_screen_event.dart';

/// An event used to request organization information for a pet.
class GetOrganizationPetScreenEvent implements PetInfoScreenEvent {
  final String id;

  /// Constructs a [GetOrganizationPetScreenEvent] with the specified organization ID.
  GetOrganizationPetScreenEvent({
    required this.id,
  });
}
