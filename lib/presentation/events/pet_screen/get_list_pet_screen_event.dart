import 'package:adopt_a_pet/data/models/pet_type_enum.dart';
import 'package:adopt_a_pet/presentation/events/pet_screen/pet_screen_event.dart';

class GetListPetScreenEvent implements PetScreenEvent {
  int page;
  PetType petType;

  GetListPetScreenEvent({
    required this.page,
    required this.petType,
  });
}
