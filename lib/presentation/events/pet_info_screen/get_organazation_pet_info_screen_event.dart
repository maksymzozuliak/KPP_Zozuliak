import 'package:adopt_a_pet/presentation/events/pet_info_screen/pet_info_screen_event.dart';

class GetOrganizationPetScreenEvent implements PetInfoScreenEvent {
  String id;

  GetOrganizationPetScreenEvent({
    required this.id,
  });
}
