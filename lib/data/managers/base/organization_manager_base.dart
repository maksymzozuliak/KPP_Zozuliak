import 'package:adopt_a_pet/data/models/organization.dart';

abstract class OrganizationManagerBase {
  Future<Organization?> getOrganization(String id);
}
