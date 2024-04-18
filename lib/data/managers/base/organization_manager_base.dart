import 'package:adopt_a_pet/data/models/organization.dart';

/// An abstract class representing the base organization manager.
abstract class OrganizationManagerBase {
  /// Retrieves an organization by its ID.
  ///
  /// [id]: The ID of the organization to retrieve.
  ///
  /// Returns a [Future]<[Organization]?> representing the organization information.
  Future<Organization?> getOrganization(String id);
}
