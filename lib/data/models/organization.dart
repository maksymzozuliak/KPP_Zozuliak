import 'package:adopt_a_pet/data/models/photo.dart';

class Organization {
  final String id;
  final String name;
  final String? email;
  final String? phone;

  Organization({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });
}