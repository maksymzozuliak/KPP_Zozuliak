import 'package:adopt_a_pet/data/models/organization.dart';
import 'package:adopt_a_pet/utils/data_loading_state.dart';

/// Represents the state of the pet information screen.
class PetInfoScreenState {
  final DataLoadingState organizationLoadingState;
  final Organization? organization;

  /// Constructor for PetInfoScreenState.
  PetInfoScreenState({
    required this.organizationLoadingState,
    required this.organization,
  });

  /// Creates an initial state for the pet information screen.
  static PetInfoScreenState createInitial() {
    return PetInfoScreenState(
      organizationLoadingState: DataLoadingState.none,
      organization: null,
    );
  }

  /// Creates a state after attempting to get organization information.
  static PetInfoScreenState createForGetOrganization({
    required DataLoadingState petListLoadingState,
    required Organization? organization,
  }) {
    return PetInfoScreenState(
      organizationLoadingState: petListLoadingState,
      organization: organization,
    );
  }
}
