import 'package:adopt_a_pet/api/services/base/pet_list_api_service_base.dart';
import 'package:adopt_a_pet/data/managers/base/pet_manager_base.dart';
import 'package:adopt_a_pet/data/models/pet.dart';
import 'package:adopt_a_pet/extensions/dto/pet_dto_extensions.dart';

class PetManager implements PetManagerBase {
  PetListApiServiceBase _service;

  PetManager(this._service);

  @override
  Future<List<Pet>>  getPetList(String? type, int page,String? name) async {
    final data = await _service.getPetList(type, page, name);

    final petList = data.map((item) => item
        .toModel())
        .toList();

    return petList;
  }
}
