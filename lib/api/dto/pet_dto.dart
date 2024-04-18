import 'package:adopt_a_pet/api/dto/photo_dto.dart';

import '../../api/dto/attributes_dto.dart';
import 'breeds_dto.dart';
import 'pet_colors_dto.dart';
import '../../api/dto/contact_dto.dart';
import 'environment_dto.dart';

/// A data transfer object (DTO) representing a pet.
class PetDto {
  /// The unique identifier of the pet.
  final int id;

  /// The identifier of the organization that owns the pet.
  final String organizationId;

  /// The type of pet.
  final String type;

  /// The species of the pet.
  final String species;

  /// The breeds of the pet.
  final BreedsDto breeds;

  /// The colors of the pet.
  final PetColorsDto colors;

  /// The age of the pet.
  final String age;

  /// The gender of the pet.
  final String gender;

  /// The size of the pet.
  final String size;

  /// The attributes of the pet.
  final AttributesDto attributes;

  /// The environment in which the pet can thrive.
  final EnvironmentDto environment;

  /// The name of the pet.
  final String name;

  /// The description of the pet.
  final String? description;

  /// The primary photo of the pet.
  final PhotoDto? primaryPhotoCropped;

  /// The date when the pet was published.
  final String publishedAt;

  /// The contact information associated with the pet.
  final ContactDto contact;

  /// Constructs a [PetDto] instance.
  ///
  /// [id]: The unique identifier of the pet.
  /// [organizationId]: The identifier of the organization that owns the pet.
  /// [type]: The type of pet.
  /// [species]: The species of the pet.
  /// [breeds]: The breeds of the pet.
  /// [colors]: The colors of the pet.
  /// [age]: The age of the pet.
  /// [gender]: The gender of the pet.
  /// [size]: The size of the pet.
  /// [attributes]: The attributes of the pet.
  /// [environment]: The environment in which the pet can thrive.
  /// [name]: The name of the pet.
  /// [description]: The description of the pet.
  /// [primaryPhotoCropped]: The primary photo of the pet.
  /// [publishedAt]: The date when the pet was published.
  /// [contact]: The contact information associated with the pet.
  PetDto({
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

  /// Constructs a [PetDto] instance from a JSON map.
  ///
  /// [json]: A map representing the JSON data.
  ///
  /// Returns a [PetDto] instance.
  factory PetDto.fromJson(Map<String, dynamic> json) {
    return PetDto(
      id: json['id'],
      organizationId: json['organization_id'],
      type: json['type'],
      species: json['species'],
      breeds: BreedsDto.fromJson(json['breeds']),
      colors: PetColorsDto.fromJson(json['colors']),
      age: json['age'],
      gender: json['gender'],
      size: json['size'],
      attributes: AttributesDto.fromJson(json['attributes']),
      environment: EnvironmentDto.fromJson(json['environment']),
      name: json['name'],
      description: json['description'],
      primaryPhotoCropped: json['primary_photo_cropped'] == null ? null : PhotoDto.fromJson(json['primary_photo_cropped']),
      publishedAt: json['published_at'],
      contact: ContactDto.fromJson(json['contact']),
    );
  }
}
