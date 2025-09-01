import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_drawer_tile.dart';
import 'package:food_delivery_app/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: SafeArea(
        child: Column(
          children: [
            // app Logo
            Padding(
              padding: const EdgeInsets.only(top: 50, ),
              child: Icon(
                Icons.lock_open_outlined,
                color: Theme.of(context).colorScheme.inversePrimary,
                size: 80,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),

            // home list tile
            MyDrawerTile(text: 'Home', icon: Icons.home, onTap: () {
              Navigator.pop(context);
            }),

            // settings list tile
            MyDrawerTile(text: 'Settings', icon: Icons.settings, onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
            }),

            Spacer(),

            // logout list tile
            MyDrawerTile(text: 'Logout', icon: Icons.logout, onTap: () {
              Navigator.pop(context);
            }),
          ],
        ),
      ),
    );
  }
}
