import 'package:adopt_a_pet/data/models/address.dart';

/// A model class representing contact information.
class Contact {
  /// The email address associated with the contact.
  final String? email;

  /// The phone number associated with the contact.
  final String? phone;

  /// The address associated with the contact.
  final Address address;

  /// Constructs a [Contact] instance.
  ///
  /// [email]: The email address associated with the contact.
  /// [phone]: The phone number associated with the contact.
  /// [address]: The address associated with the contact.
  Contact({
    required this.email,
    required this.phone,
    required this.address,
  });
}
