import 'dart:ui';
import 'package:adopt_a_pet/data/models/pet_type_enum.dart';
import 'package:flutter/material.dart';

/// Extension methods on [String] for utility functions.
extension StringExtensions on String {
  /// Represents an empty string.
  static const String _empty = '';

  /// Retrieves an empty string.
  static String empty() {
    return _empty;
  }

  /// Converts a string representation to a [PetType] enum.
  PetType toPetTypeEnum() {
    switch (this) {
      case "Dog":
        return PetType.dog;
      case 'Cat':
        return PetType.cat;
      case 'Bird':
        return PetType.bird;
      case 'Small & Furry':
        return PetType.smallAndFurry;
      case 'Rabbit':
        return PetType.rabbit;
      default:
        return PetType.dog;
    }
  }
}
