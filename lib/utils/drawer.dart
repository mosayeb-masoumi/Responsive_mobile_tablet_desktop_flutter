import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
     backgroundColor: Colors.grey[300],
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.person ,size: 100,)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Dashboaer")
          ),

          ListTile(
              leading: Icon(Icons.chat),
              title: Text("Chat")
          ),

          ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text("Log out")
          ),
        ],
      ),
    );
  }
}
