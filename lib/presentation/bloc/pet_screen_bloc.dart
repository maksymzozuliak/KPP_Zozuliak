import 'dart:async';

import 'package:adopt_a_pet/data/managers/base/pet_manager_base.dart';
import 'package:adopt_a_pet/ioc/simple_ioc_container.dart';
import 'package:adopt_a_pet/presentation/events/pet_screen/get_list_by_name_pet_screen_event.dart';
import 'package:adopt_a_pet/presentation/events/pet_screen/get_list_pet_screen_event.dart';
import 'package:adopt_a_pet/presentation/events/pet_screen/pet_screen_event.dart';
import 'package:adopt_a_pet/presentation/states/pet_screen/pet_screen_state.dart';
import 'package:adopt_a_pet/utils/data_loading_state.dart';
import 'package:bloc/bloc.dart';

/// A BLoC (Business Logic Component) responsible for managing state and handling events
/// related to the pet screen.
class PetScreenBloc extends Bloc<PetScreenEvent, PetScreenState> {
  late PetManagerBase _petManager;

  /// Initializes the [PetScreenBloc] with the initial state and sets up event handlers.
  PetScreenBloc() : super(PetScreenState.createInitial()) {
    _petManager = SimpleIoCContainer.resolve<PetManagerBase>();
    on<GetListPetScreenEvent>(_onGetListPetScreenEvent);
    on<GetListByNamePetScreenEvent>(_onGetListByNamePetScreenEvent);
  }

  /// Handles the [GetListPetScreenEvent] by loading the list of pets from the data layer.
  Future<void> _onGetListPetScreenEvent(
      GetListPetScreenEvent event,
      Emitter<PetScreenState> emit,
      ) async {
    emit(
      PetScreenState.createForGetList(
        petListLoadingState: DataLoadingState.loading,
        petList: null,
        selectedPetType: event.petType ?? state.selectedPetType,
        selectedLocation: event.location ?? state.selectedLocation,
      ),
    );
    try {
      final petList = await _petManager.getPetList(
        event.petType?.name ?? state.selectedPetType.name,
        event.page,
        null,
      );

      if (petList.isNotEmpty) {
        emit(
          PetScreenState.createForGetList(
            petListLoadingState: DataLoadingState.data,
            petList: petList,
            selectedPetType: event.petType ?? state.selectedPetType,
            selectedLocation: event.location ?? state.selectedLocation,
          ),
        );
      } else {
        emit(
          PetScreenState.createForGetList(
            petListLoadingState: DataLoadingState.empty,
            petList: petList,
            selectedPetType: event.petType ?? state.selectedPetType,
            selectedLocation: event.location ?? state.selectedLocation,
          ),
        );
      }
    } catch (ex) {
      print(ex.toString());
      emit(
        PetScreenState.createForGetList(
          petListLoadingState: DataLoadingState.error,
          petList: null,
          selectedPetType: event.petType ?? state.selectedPetType,
          selectedLocation: event.location ?? state.selectedLocation,
        ),
      );
    }
  }

  /// Handles the [GetListByNamePetScreenEvent] by loading the list of pets filtered by name from the data layer.
  Future<void> _onGetListByNamePetScreenEvent(
      GetListByNamePetScreenEvent event,
      Emitter<PetScreenState> emit,
      ) async {
    emit(
      PetScreenState.createForGetList(
        petListLoadingState: DataLoadingState.loading,
        petList: null,
        selectedPetType: state.selectedPetType,
        selectedLocation: state.selectedLocation,
      ),
    );
    try {
      final petList = await _petManager.getPetList(
        state.selectedPetType.name,
        event.page,
        event.name.isEmpty ? null : event.name,
      );

      if (petList.isNotEmpty) {
        emit(
          PetScreenState.createForGetList(
            petListLoadingState: DataLoadingState.data,
            petList: petList,
            selectedPetType: state.selectedPetType,
            selectedLocation: state.selectedLocation,
          ),
        );
      } else {
        emit(
          PetScreenState.createForGetList(
            petListLoadingState: DataLoadingState.empty,
            petList: petList,
            selectedPetType: state.selectedPetType,
            selectedLocation: state.selectedLocation,
          ),
        );
      }
    } catch (ex) {
      print(ex.toString());
      emit(
        PetScreenState.createForGetList(
          petListLoadingState: DataLoadingState.error,
          petList: null,
          selectedPetType: state.selectedPetType,
          selectedLocation: state.selectedLocation,
        ),
      );
    }
  }
}
