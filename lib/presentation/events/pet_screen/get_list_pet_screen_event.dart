import 'package:adopt_a_pet/data/models/location.dart';
import 'package:adopt_a_pet/data/models/pet_type_enum.dart';
import 'package:adopt_a_pet/presentation/events/pet_screen/pet_screen_event.dart';

/// An event for retrieving a list of pets.
class GetListPetScreenEvent implements PetScreenEvent {
  final int page;
  final PetType? petType;
  final Location? location;

  /// Constructs a [GetListPetScreenEvent] with the specified [page], [petType], and [location].
  GetListPetScreenEvent({
    required this.page,
    this.petType,
    this.location,
  });
}
