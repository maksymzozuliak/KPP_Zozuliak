import 'package:adopt_a_pet/data/models/organization.dart';
import 'package:adopt_a_pet/data/models/pet.dart';
import 'package:adopt_a_pet/data/models/pet_type_enum.dart';
import 'package:adopt_a_pet/utils/data_loading_state.dart';

class PetInfoScreenState {
  DataLoadingState organizationLoadingState;
  Organization? organization;

  PetInfoScreenState({
    required this.organizationLoadingState,
    required this.organization,
  });

  static createInitial() {
    return PetInfoScreenState(
      organizationLoadingState: DataLoadingState.none,
      organization: null,
    );
  }

  static createForGetOrganization({
    required DataLoadingState petListLoadingState,
    required Organization? organization,
  }) {
    return PetInfoScreenState(
      organizationLoadingState: petListLoadingState,
      organization: organization,
    );
  }
}
