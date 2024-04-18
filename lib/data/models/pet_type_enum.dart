/// An enumeration representing different types of pets.
enum PetType {
  /// Represents a dog.
  dog(name: "Dog", icon: "assets/images/dog_image.png"),

  /// Represents a cat.
  cat(name: "Cat", icon: "assets/images/cat_image.png"),

  /// Represents a bird.
  bird(name: "Bird", icon: "assets/images/bird_image.png"),

  /// Represents a rabbit.
  rabbit(name: "Rabbit", icon: "assets/images/rabbit_image.png"),

  /// Represents a small and furry pet.
  smallAndFurry(name: "Small & Furry", icon: "assets/images/hamster_image.png");

  /// The name of the pet type.
  final String name;

  /// The icon representing the pet type.
  final String icon;

  /// Constructs a [PetType] instance.
  ///
  /// [name]: The name of the pet type.
  /// [icon]: The icon representing the pet type.
  const PetType({
    required this.name,
    required this.icon,
  });
}
