import 'package:adopt_a_pet/api/dto/pet_dto.dart';

/// An abstract class representing a base pet list API service.
abstract class PetListApiServiceBase {
  /// Retrieves a list of pets based on specified criteria.
  ///
  /// [type]: The type of pet (e.g., 'Dog', 'Cat').
  /// [page]: The page number of the pet list.
  /// [name]: The name of the pet.
  ///
  /// Returns a Future<List<PetDto>> representing the list of pets.
  Future<List<PetDto>> getPetList(String? type, int page, String? name);
}
