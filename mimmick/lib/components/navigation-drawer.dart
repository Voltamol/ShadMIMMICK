import 'package:flutter/material.dart';

class CustomNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('drafts'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.palette_outlined),
            title: Text('Toggle Theme'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.question_mark_rounded),
            title: Text('Write Query'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}
