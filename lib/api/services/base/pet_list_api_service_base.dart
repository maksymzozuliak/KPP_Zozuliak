import 'package:adopt_a_pet/api/dto/pet_dto.dart';

abstract class PetListApiServiceBase {
  Future<List<PetDto>> getPetList(String? type, int page, String? name);
}