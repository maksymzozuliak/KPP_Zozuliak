import 'package:adopt_a_pet/data/models/location.dart';
import 'package:adopt_a_pet/data/models/pet.dart';
import 'package:adopt_a_pet/data/models/pet_type_enum.dart';
import 'package:adopt_a_pet/extensions/location_extensions.dart';
import 'package:adopt_a_pet/utils/data_loading_state.dart';

class PetScreenState {
  DataLoadingState petListLoadingState;
  List<Pet>? petList;
  PetType selectedPetType;
  Location selectedLocation;

  PetScreenState({
    required this.petListLoadingState,
    required this.petList,
    required this.selectedPetType,
    required this.selectedLocation,
  });

  static createInitial() {
    return PetScreenState(
      petListLoadingState: DataLoadingState.none,
      petList: null,
      selectedPetType: PetType.dog,
      selectedLocation: LocationExtensions.all(),
    );
  }

  static createForGetList({
    required DataLoadingState petListLoadingState,
    required List<Pet>? petList,
    required PetType selectedPetType,
    required Location selectedLocation
  }) {
    return PetScreenState(
      petListLoadingState: petListLoadingState,
      petList: petList,
      selectedPetType: selectedPetType,
      selectedLocation: selectedLocation,
    );
  }
}
