import 'package:adopt_a_pet/data/models/pet.dart';

abstract class PetManagerBase {
  Future<List<Pet>> getPetList(String? type, int page, String? name);
}
