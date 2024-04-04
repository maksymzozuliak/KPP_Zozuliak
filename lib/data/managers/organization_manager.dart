import 'package:adopt_a_pet/api/services/base/oraganization_api_service_base.dart';
import 'package:adopt_a_pet/data/managers/base/organization_manager_base.dart';
import 'package:adopt_a_pet/data/models/organization.dart';
import 'package:adopt_a_pet/extensions/dto/organization_dto_extensions.dart';

class OrganizationManager implements OrganizationManagerBase {
  OrganizationApiServiceBase _service;

  OrganizationManager(this._service);

  @override
  Future<Organization?> getOrganization(String id) async {
    final data = await _service.getOrganization(id);

    return data?.toModel();
  }
}
