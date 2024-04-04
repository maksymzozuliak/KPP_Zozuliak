import 'dart:async';
import 'package:adopt_a_pet/data/managers/base/organization_manager_base.dart';
import 'package:adopt_a_pet/data/managers/base/pet_manager_base.dart';
import 'package:adopt_a_pet/data/managers/pet_manager.dart';
import 'package:adopt_a_pet/ioc/simple_ioc_container.dart';
import 'package:adopt_a_pet/presentation/events/pet_info_screen/get_organazation_pet_info_screen_event.dart';
import 'package:adopt_a_pet/presentation/events/pet_info_screen/pet_info_screen_event.dart';
import 'package:adopt_a_pet/presentation/events/pet_screen/get_list_by_name_pet_screen_event.dart';
import 'package:adopt_a_pet/presentation/events/pet_screen/get_list_pet_screen_event.dart';
import 'package:adopt_a_pet/presentation/events/pet_screen/pet_screen_event.dart';
import 'package:adopt_a_pet/presentation/states/pet_info_screen/pet_info_screen_state.dart';
import 'package:adopt_a_pet/presentation/states/pet_screen/pet_screen_state.dart';
import 'package:adopt_a_pet/utils/data_loading_state.dart';
import 'package:bloc/bloc.dart';

class PetInfoScreenBloc extends Bloc<PetInfoScreenEvent, PetInfoScreenState> {
  late OrganizationManagerBase _organizationManager;

  PetInfoScreenBloc(): super(PetInfoScreenState.createInitial()) {
    _organizationManager = SimpleIoCContainer.resolve<OrganizationManagerBase>();
    on<GetOrganizationPetScreenEvent>(_getOrganizationPetScreenEvent);
  }

  FutureOr<void> _getOrganizationPetScreenEvent(
      GetOrganizationPetScreenEvent event,
      Emitter<PetInfoScreenState> emit,
      ) async {
    emit(
      PetInfoScreenState.createForGetOrganization(
          petListLoadingState: DataLoadingState.loading,
          organization: null
      ),
    );
    try {
      final organization = await _organizationManager.getOrganization(event.id);

      if (organization != null) {
        emit(
          PetInfoScreenState.createForGetOrganization(
            petListLoadingState: DataLoadingState.data,
            organization: organization,
          ),
        );
      } else {
        emit(
          PetInfoScreenState.createForGetOrganization(
            petListLoadingState: DataLoadingState.error,
            organization: organization,
          ),
        );
      }
    } catch (ex) {
      print(ex.toString());
      emit(
        PetInfoScreenState.createForGetOrganization(
          petListLoadingState: DataLoadingState.error,
          organization: null,
        ),
      );
    }
  }
}