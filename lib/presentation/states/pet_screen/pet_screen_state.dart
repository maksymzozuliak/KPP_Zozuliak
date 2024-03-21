import 'package:adopt_a_pet/data/models/pet.dart';
import 'package:adopt_a_pet/data/models/pet_type_enum.dart';
import 'package:adopt_a_pet/utils/data_loading_state.dart';

class PetScreenState {
  DataLoadingState petListLoadingState;
  List<Pet>? petList;
  PetType selectedPetType;

  PetScreenState({
    required this.petListLoadingState,
    required this.petList,
    required this.selectedPetType,
  });

  static createInitial() {
    return PetScreenState(
      petListLoadingState: DataLoadingState.none,
      petList: null,
      selectedPetType: PetType.dog
    );
  }

  static createForGetList({
    required DataLoadingState petListLoadingState,
    required List<Pet>? petList,
    required PetType selectedPetType,
  }) {
    return PetScreenState(
      petListLoadingState: petListLoadingState,
      petList: petList,
      selectedPetType: selectedPetType,
    );
  }
}
