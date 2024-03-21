enum PetType {
  dog(name: "Dog", icon: "assets/images/dog_image.png"),
  cat(name: "Cat", icon: "assets/images/cat_image.png"),
  bird(name: "Bird", icon: "assets/images/bird_image.png"),
  rabbit(name: "Rabbit", icon: "assets/images/rabbit_image.png"),
  smallAndFurry(name: "Small & Furry", icon: "assets/images/hamster_image.png");

  const PetType({
    required this.name,
    required this.icon,
  });

  final String name;
  final String icon;
}