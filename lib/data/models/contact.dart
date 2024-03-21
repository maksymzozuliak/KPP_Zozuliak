import 'package:adopt_a_pet/data/models/address.dart';

class Contact {
  final String? email;
  final String? phone;
  final Address address;

  Contact({
    required this.email,
    required this.phone,
    required this.address,
  });
}