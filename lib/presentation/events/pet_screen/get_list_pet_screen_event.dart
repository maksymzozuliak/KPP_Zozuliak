import 'package:adopt_a_pet/data/models/location.dart';
import 'package:adopt_a_pet/data/models/pet_type_enum.dart';
import 'package:adopt_a_pet/presentation/events/pet_screen/pet_screen_event.dart';

class GetListPetScreenEvent implements PetScreenEvent {
  int page;
  PetType? petType;
  Location? location;

  GetListPetScreenEvent({
    required this.page,
    this.petType,
    this.location,
  });
}
