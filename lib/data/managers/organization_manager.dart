import 'package:adopt_a_pet/api/services/base/oraganization_api_service_base.dart';
import 'package:adopt_a_pet/data/managers/base/organization_manager_base.dart';
import 'package:adopt_a_pet/data/models/organization.dart';
import 'package:adopt_a_pet/extensions/dto/organization_dto_extensions.dart';

/// An implementation of the [OrganizationManagerBase] interface.
class OrganizationManager implements OrganizationManagerBase {
  /// The organization API service used to retrieve organization data.
  final OrganizationApiServiceBase _service;

  /// Constructs an [OrganizationManager] instance.
  ///
  /// [_service]: The organization API [OrganizationApiServiceBase] service used to retrieve organization data.
  OrganizationManager(this._service);

  /// Function to get [OrganizationDto] info with [id]
  ///
  /// [id]: id of organization
  ///
  /// Returns [OrganizationDto] if the request fas successful and [null] if it fails
  @override
  Future<Organization?> getOrganization(String id) async {
    final data = await _service.getOrganization(id);

    return data?.toModel();
  }
}
