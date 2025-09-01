import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    // Logic to open location search box
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Search Location"),
        content: TextField(
          decoration: InputDecoration(hintText: "Enter your location"),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(context),
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(context),
            child: Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver Now", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // address
                Text("123 Main St, Springfield, USA", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontWeight: FontWeight.bold)),
                  
                  
                // drop down menu
                Icon(Icons.keyboard_arrow_down_rounded),
                  
              ],
            ),
          )
        ],
      ),
    );
  }
}