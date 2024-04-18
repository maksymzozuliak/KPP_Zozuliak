import 'package:adopt_a_pet/data/models/photo.dart';

/// A model class representing an organization.
class Organization {
  /// The ID of the organization.
  final String id;

  /// The name of the organization.
  final String name;

  /// The email address associated with the organization.
  final String? email;

  /// The phone number associated with the organization.
  final String? phone;

  /// Constructs an [Organization] instance.
  ///
  /// [id]: The ID of the organization.
  /// [name]: The name of the organization.
  /// [email]: The email address associated with the organization.
  /// [phone]: The phone number associated with the organization.
  Organization({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });
}
