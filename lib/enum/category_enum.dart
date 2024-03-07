enum Category {
  dog(name: "Dog", icon: "assets/images/dog_image.png"),
  cat(name: "Cat", icon: "assets/images/cat_image.png"),
  turtle(name: "Turtle", icon: "assets/images/turtle_image.png"),
  hamster(name: "Hamster", icon: "assets/images/hamster_image.png"),
  rabbit(name: "Rabbit", icon: "assets/images/rabbit_image.png");

  const Category({
    required this.name,
    required this.icon,
  });

  final String name;
  final String icon;
}