import 'package:flutter/material.dart';

import '../settings_pages.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // App icon
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 70,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          // Divider after the icon
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          // Home list title
          ListTile(
            leading: Icon(Icons.home),
            title: Text("H O M E"),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          // Settings list title
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G S"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingsPages(),));
            },
          ),

          // Logout list title
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("L O G O U T"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
