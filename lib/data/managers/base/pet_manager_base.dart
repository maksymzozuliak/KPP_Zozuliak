import 'package:adopt_a_pet/data/models/pet.dart';

/// An abstract class representing the base pet manager.
abstract class PetManagerBase {
  /// Retrieves a list of pets based on specified criteria.
  ///
  /// [type]: The type of pet.
  /// [page]: Current page of pagination.
  /// [name]: The name of the pet.
  ///
  /// Returns a [Future]<List<[Pet]>> representing the list of pets.
  Future<List<Pet>> getPetList(String? type, int page, String? name);
}
