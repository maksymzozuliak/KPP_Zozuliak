import 'package:adopt_a_pet/data/models/attributes.dart';
import 'package:adopt_a_pet/data/models/breeds.dart';
import 'package:adopt_a_pet/data/models/pet_type_enum.dart';
import 'package:adopt_a_pet/data/models/contact.dart';
import 'package:adopt_a_pet/data/models/environment.dart';
import 'package:adopt_a_pet/data/models/pet_colors.dart';
import 'package:adopt_a_pet/data/models/photo.dart';


class Pet {
  final int id;
  final String organizationId;
  final PetType type;
  final String species;
  final Breeds breeds;
  final PetColors colors;
  final String age;
  final String gender;
  final String size;
  final Attributes attributes;
  final Environment environment;
  final String name;
  final String? description;
  final Photo? primaryPhotoCropped;
  final String publishedAt;
  final Contact contact;

  Pet({
    required this.id,
    required this.organizationId,
    required this.type,
    required this.species,
    required this.breeds,
    required this.colors,
    required this.age,
    required this.gender,
    required this.size,
    required this.attributes,
    required this.environment,
    required this.name,
    required this.description,
    required this.primaryPhotoCropped,
    required this.publishedAt,
    required this.contact,
  });
}