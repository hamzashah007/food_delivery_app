import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class Restaurant extends ChangeNotifier{
  // List of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic CheeseBurger",
      description: "A juicy Burger with loaded Cheese",
      imagePath: "Images/Burgers/burger_1.png",
      price: 5.99,
      category: FoodCategory.Burgers,
      addons: [
        Addon(name: "Extra Cheese", price: 1.00),
        Addon(name: "Bacon", price: 1.50),
      ],
    ),
    Food(
      name: "Spicy Chicken Burger",
      description: "A spicy burger with crispy chicken",
      imagePath: "Images/Burgers/burger_2.jpg",
      price: 6.49,
      category: FoodCategory.Burgers,
      addons: [
        Addon(name: "Jalapenos", price: 0.75),
        Addon(name: "Avocado", price: 1.00),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "A healthy veggie patty with fresh vegetables",
      imagePath: "Images/Burgers/burger_3.jpg",
      price: 5.49,
      category: FoodCategory.Burgers,
      addons: [
        Addon(name: "Mushrooms", price: 0.75),
        Addon(name: "Vegan Cheese", price: 1.25),
      ],
    ),

    // desserts
    Food(
      name: "Chocolate Lava Cake",
      description: "A rich chocolate cake with a gooey center",
      imagePath: "Images/Dessert/dessert_1.jpg",
      price: 4.99,
      category: FoodCategory.Desserts,
      addons: [
        Addon(name: "Vanilla Ice Cream", price: 1.00),
        Addon(name: "Whipped Cream", price: 0.50),
      ],
    ),
    Food(
      name: "New York Cheesecake",
      description: "Classic creamy cheesecake with graham cracker crust",
      imagePath: "Images/Dessert/dessert_2.jpg",
      price: 5.99,
      category: FoodCategory.Desserts,
      addons: [
        Addon(name: "Berry Compote", price: 1.00),
        Addon(name: "Caramel Sauce", price: 0.75),
      ],
    ),
    Food(
      name: "Tiramisu",
      description: "Italian coffee-flavored dessert",
      imagePath: "Images/Dessert/dessert_3.jpeg",
      price: 6.49,
      category: FoodCategory.Desserts,
      addons: [
        Addon(name: "Extra Coffee Drizzle", price: 0.50),
        Addon(name: "Chocolate Shavings", price: 0.75),
      ],
    ),

    // drinks
    Food(
      name: "Mango Smoothie",
      description: "A refreshing mango smoothie",
      imagePath: "Images/Drinks/drink_1.jpg",
      price: 3.99,
      category: FoodCategory.Drinks,
      addons: [
        Addon(name: "Extra Mango", price: 0.50),
        Addon(name: "Chia Seeds", price: 0.75),
      ],
    ),
    Food(
      name: "Berry Blast",
      description: "Mixed berry smoothie with yogurt",
      imagePath: "Images/Drinks/drink_2.jpeg",
      price: 4.49,
      category: FoodCategory.Drinks,
      addons: [
        Addon(name: "Protein Boost", price: 1.00),
        Addon(name: "Almond Milk", price: 0.50),
      ],
    ),
    Food(
      name: "Cold Drink",
      description: "Refreshing cold drink",
      imagePath: "Images/Drinks/drink_3.webp",
      price: 2.99,
      category: FoodCategory.Drinks,
      addons: [
        Addon(name: "Lemon", price: 0.25),
        // Addon(name: "Extra Honey", price: 0.50),
      ],
    ),

    // salads
    Food(
      name: "Caesar Salad",
      description: "Fresh romaine lettuce with Caesar dressing",
      imagePath: "Images/Salads/salad_1.jpg",
      price: 6.99,
      category: FoodCategory.Salads,
      addons: [
        Addon(name: "Grilled Chicken", price: 2.00),
        Addon(name: "Croutons", price: 0.50),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "Mediterranean salad with feta cheese",
      imagePath: "Images/Salads/salad_2.jpg",
      price: 7.49,
      category: FoodCategory.Salads,
      addons: [
        Addon(name: "Extra Olives", price: 0.75),
        Addon(name: "Extra Feta", price: 1.00),
      ],
    ),
    Food(
      name: "Quinoa Bowl",
      description: "Healthy quinoa with roasted vegetables",
      imagePath: "Images/Salads/salad_3.jpg",
      price: 8.99,
      category: FoodCategory.Salads,
      addons: [
        Addon(name: "Avocado", price: 1.50),
        Addon(name: "Grilled Tofu", price: 2.00),
      ],
    ),

    // sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries",
      imagePath: "Images/Sides/sides_1.jpg",
      price: 2.99,
      category: FoodCategory.Sides,
      addons: [
        Addon(name: "Ketchup", price: 0.25),
        Addon(name: "Cheese Sauce", price: 0.75),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy battered onion rings",
      imagePath: "Images/Sides/sides_2.jpg",
      price: 3.49,
      category: FoodCategory.Sides,
      addons: [
        Addon(name: "Ranch Dip", price: 0.50),
        Addon(name: "BBQ Sauce", price: 0.50),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Healthy and crispy sweet potato fries",
      imagePath: "Images/Sides/sides_3.jpg",
      price: 3.99,
      category: FoodCategory.Sides,
      addons: [
        Addon(name: "Chipotle Mayo", price: 0.75),
        Addon(name: "Honey Mustard", price: 0.50),
      ],
    ),
  ];

  /*
  GETTERS



  */
  List<Food> get menu => _menu;

  /*
  OPPERATIONS



  */

  // add to cart


  // remove from cart

  // get total price of cart

  // get total number of items in cart

  // clear cart


  /*
  HELPERS



  */

  // generate a receipt

  // format double value into money

  // format list of addons into a string

  
}