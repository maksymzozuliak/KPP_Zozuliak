import 'package:adopt_a_pet/api/base/dio_request_service.dart';
import 'package:adopt_a_pet/api/base/request_service.dart';
import 'package:adopt_a_pet/api/services/base/oraganization_api_service_base.dart';
import 'package:adopt_a_pet/api/services/base/pet_list_api_service_base.dart';
import 'package:adopt_a_pet/api/services/organization_api_service.dart';
import 'package:adopt_a_pet/api/services/pet_list_api_service.dart';
import 'package:adopt_a_pet/data/managers/base/organization_manager_base.dart';
import 'package:adopt_a_pet/data/managers/base/pet_manager_base.dart';
import 'package:adopt_a_pet/data/managers/organization_manager.dart';
import 'package:adopt_a_pet/data/managers/pet_manager.dart';
import 'package:adopt_a_pet/ioc/simple_ioc_container.dart';

final class Bootstrapper {
  static void initialize() {
    _registerServices();
    _registerManagers();
  }

  static void _registerServices() {
    SimpleIoCContainer.register<RequestService, DioRequestService>(
        DioRequestService());

    SimpleIoCContainer.register<PetListApiServiceBase, PetListApiService>(
        PetListApiService(SimpleIoCContainer.resolve<RequestService>()));

    SimpleIoCContainer.register<OrganizationApiServiceBase, OrganizationApiService>(
        OrganizationApiService(SimpleIoCContainer.resolve<RequestService>()));
  }

  static void _registerManagers() {

    SimpleIoCContainer.register<PetManagerBase, PetManager>(
        PetManager(SimpleIoCContainer.resolve<PetListApiServiceBase>()));

    SimpleIoCContainer.register<OrganizationManagerBase, OrganizationManager>(
        OrganizationManager(SimpleIoCContainer.resolve<OrganizationApiServiceBase>()));
  }
}
