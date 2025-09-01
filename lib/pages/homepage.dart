import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_description_box.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_sliver_appbar.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';

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
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
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
      body: TabBarView(
        controller: _tabController,
        children: [
          Text("Hello"),
          Text("Flutter"),
          Text("Code"),
          
        ],
        
      ),
      )
    );
  }
}