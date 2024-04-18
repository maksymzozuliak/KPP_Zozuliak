import 'package:adopt_a_pet/api/dto/organization_dto.dart';
import 'package:adopt_a_pet/api/dto/pet_dto.dart';

/// An abstract class representing a base organization API service.
abstract class OrganizationApiServiceBase {
  /// Retrieves information about an organization by its ID.
  ///
  /// [id]: The ID of the organization to retrieve.
  ///
  /// Returns a [Future]<[OrganizationDto]?> representing the organization information.
  Future<OrganizationDto?> getOrganization(String id);
}
