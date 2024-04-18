import 'package:adopt_a_pet/api/services/base/pet_list_api_service_base.dart';
import 'package:adopt_a_pet/data/managers/base/pet_manager_base.dart';
import 'package:adopt_a_pet/data/models/pet.dart';
import 'package:adopt_a_pet/extensions/dto/pet_dto_extensions.dart';

/// An implementation of the [PetManagerBase] interface.
class PetManager implements PetManagerBase {
  /// The pet list API service used to retrieve pet data.
  final PetListApiServiceBase _service;

  /// Constructs a [PetManager] instance.
  ///
  /// [_service]: The pet list API [PetListApiServiceBase] service used to retrieve pet data.
  PetManager(this._service);

  /// Retrieves a list of pets based on specified criteria.
  ///
  /// [type]: The type of pet (e.g., 'dog', 'cat').
  /// [page]: The page number of the pet list.
  /// [name]: The name of the pet.
  ///
  /// Returns a [Future]<List<[Pet]>> representing the list of pets.
  @override
  Future<List<Pet>> getPetList(String? type, int page, String? name) async {

    final data = await _service.getPetList(type, page, name);

    final petList = data.map((item) => item.toModel()).toList();

    return petList;
  }
}
