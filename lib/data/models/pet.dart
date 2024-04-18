import 'package:adopt_a_pet/data/models/attributes.dart';
import 'package:adopt_a_pet/data/models/breeds.dart';
import 'package:adopt_a_pet/data/models/pet_type_enum.dart';
import 'package:adopt_a_pet/data/models/contact.dart';
import 'package:adopt_a_pet/data/models/environment.dart';
import 'package:adopt_a_pet/data/models/pet_colors.dart';
import 'package:adopt_a_pet/data/models/photo.dart';

/// A model class representing a pet.
class Pet {
  /// The ID of the pet.
  final int id;

  /// The ID of the organization associated with the pet.
  final String organizationId;

  /// The type of pet.
  final PetType type;

  /// The species of the pet.
  final String species;

  /// The breeds of the pet.
  final Breeds breeds;

  /// The colors of the pet.
  final PetColors colors;

  /// The age of the pet.
  final String age;

  /// The gender of the pet.
  final String gender;

  /// The size of the pet.
  final String size;

  /// The attributes of the pet.
  final Attributes attributes;

  /// The environmental preferences of the pet.
  final Environment environment;

  /// The name of the pet.
  final String name;

  /// The description of the pet.
  final String? description;

  /// The primary cropped photo of the pet.
  final Photo? primaryPhotoCropped;

  /// The published date of the pet.
  final String publishedAt;

  /// The contact information associated with the pet.
  final Contact contact;

  /// Constructs a [Pet] instance.
  ///
  /// [id]: The ID of the pet.
  /// [organizationId]: The ID of the organization associated with the pet.
  /// [type]: The type of pet.
  /// [species]: The species of the pet.
  /// [breeds]: The breeds of the pet.
  /// [colors]: The colors of the pet.
  /// [age]: The age of the pet.
  /// [gender]: The gender of the pet.
  /// [size]: The size of the pet.
  /// [attributes]: The attributes of the pet.
  /// [environment]: The environmental preferences of the pet.
  /// [name]: The name of the pet.
  /// [description]: The description of the pet.
  /// [primaryPhotoCropped]: The primary cropped photo of the pet.
  /// [publishedAt]: The published date of the pet.
  /// [contact]: The contact information associated with the pet.
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
