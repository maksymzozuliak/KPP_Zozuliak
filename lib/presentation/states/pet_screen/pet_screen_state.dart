import 'package:adopt_a_pet/data/models/location.dart';
import 'package:adopt_a_pet/data/models/pet.dart';
import 'package:adopt_a_pet/data/models/pet_type_enum.dart';
import 'package:adopt_a_pet/extensions/location_extensions.dart';
import 'package:adopt_a_pet/utils/data_loading_state.dart';

/// Represents the state of the pet screen.
class PetScreenState {
  final DataLoadingState petListLoadingState;
  final List<Pet>? petList;
  final PetType selectedPetType;
  final Location selectedLocation;

  /// Constructor for PetScreenState.
  PetScreenState({
    required this.petListLoadingState,
    required this.petList,
    required this.selectedPetType,
    required this.selectedLocation,
  });

  /// Creates an initial state for the pet screen.
  static PetScreenState createInitial() {
    return PetScreenState(
      petListLoadingState: DataLoadingState.none,
      petList: null,
      selectedPetType: PetType.dog,
      selectedLocation: LocationExtensions.all(),
    );
  }

  /// Creates a state after attempting to get a list of pets.
  static PetScreenState createForGetList({
    required DataLoadingState petListLoadingState,
    required List<Pet>? petList,
    required PetType selectedPetType,
    required Location selectedLocation,
  }) {
    return PetScreenState(
      petListLoadingState: petListLoadingState,
      petList: petList,
      selectedPetType: selectedPetType,
      selectedLocation: selectedLocation,
    );
  }
}
