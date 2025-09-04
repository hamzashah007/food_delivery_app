import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_description_box.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_food_tile.dart';
import 'package:food_delivery_app/components/my_sliver_appbar.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin {

  // tab controller
  late TabController _tabController ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }


  // sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    // return the filtered list
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu){
    return FoodCategory.values.map((category) {
      // get foods in this category
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      // return a list of widgets for each food item
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          Food food = categoryMenu[index];
          return MyFoodTile(food: food, onTap: () {
            // Handle food item tap
          });
        },
      );
    }).toList();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
    
     drawer: MyDrawer(),
     body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        MySliverAppBar(
      title: MyTabBar(tabController: _tabController),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Divider(
            indent: 25,
            endIndent: 25,
            color: Theme.of(context).colorScheme.secondary,
          ),
          // my current location 
          MyCurrentLocation(),


          // description box
          MyDescriptionBox(),
        ],
      ),
        )
      ],
      body: Consumer<Restaurant>(builder: (context, restaurant, child)=>TabBarView(
        controller: _tabController,
        children: getFoodInThisCategory(restaurant.menu),
      ),)
      )
    );
  }
}