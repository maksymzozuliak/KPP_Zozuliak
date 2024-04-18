import 'package:adopt_a_pet/presentation/events/pet_screen/pet_screen_event.dart';

/// An event for retrieving a list of pets by name.
class GetListByNamePetScreenEvent implements PetScreenEvent {
  final int page;
  final String name;

  /// Constructs a [GetListByNamePetScreenEvent] with the specified [page] and [name].
  GetListByNamePetScreenEvent({
    required this.page,
    required this.name,
  });
}
