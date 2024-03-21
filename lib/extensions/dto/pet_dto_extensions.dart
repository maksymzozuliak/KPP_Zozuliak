import 'package:adopt_a_pet/api/dto/pet_dto.dart';
import 'package:adopt_a_pet/data/models/pet.dart';
import 'package:adopt_a_pet/extensions/dto/attributes_dto_extensions.dart';
import 'package:adopt_a_pet/extensions/dto/breeds_dto_extensions.dart';
import 'package:adopt_a_pet/extensions/dto/contact_dto_extensions.dart';
import 'package:adopt_a_pet/extensions/dto/environment_dto_extensions.dart';
import 'package:adopt_a_pet/extensions/dto/pet_colors_dto_extensions.dart';
import 'package:adopt_a_pet/extensions/dto/photo_dto_extensions.dart';
import 'package:adopt_a_pet/extensions/string_extensions.dart';

extension PetDtoExtensions on PetDto {
  Pet toModel() {
    final type = this.type.toPetTypeEnum();
    final breeds = this.breeds.toModel();
    final colors = this.colors.toModel();
    final attributes = this.attributes.toModel();
    final environment = this.environment.toModel();
    final primaryPhotoCropped = this.primaryPhotoCropped?.toModel();
    final contact = this.contact.toModel();

    return Pet(
      id: id,
      organizationId: organizationId,
      type: type,
      species: species,
      breeds: breeds,
      colors: colors,
      age: age,
      gender: gender,
      size: size,
      attributes: attributes,
      environment: environment,
      name: name,
      description: description,
      primaryPhotoCropped: primaryPhotoCropped,
      publishedAt: publishedAt,
      contact: contact,
    );
  }
}