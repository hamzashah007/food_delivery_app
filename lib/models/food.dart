class Food {

  final String name; // cheese burger
  final String description; // a burger full of cheese
  final String imagePath; // lib/images/cheese_burger.png
  final double price; // 5.99
  final FoodCategory category; // burger
  List<Addon> addons; // [Extra Cheese, sauce, Extra Patty]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.addons,
  });
}


// food Categories
enum FoodCategory {
  Burgers,
  Salads,
  Sides,
  Desserts,
  Drinks,
}


class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}