import 'package:adopt_a_pet/api/dto/photo_dto.dart';

import '../../api/dto/attributes_dto.dart';
import 'breeds_dto.dart';
import 'pet_colors_dto.dart';
import '../../api/dto/contact_dto.dart';
import 'environment_dto.dart';

class PetDto {
  final int id;
  final String organizationId;
  final String type;
  final String species;
  final BreedsDto breeds;
  final PetColorsDto colors;
  final String age;
  final String gender;
  final String size;
  final AttributesDto attributes;
  final EnvironmentDto environment;
  final String name;
  final String? description;
  final PhotoDto? primaryPhotoCropped;
  final String publishedAt;
  final ContactDto contact;

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