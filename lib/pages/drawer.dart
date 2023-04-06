import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyDrawer extends StatelessWidget {
  MyDrawer({super.key, required this.title});
  String title;
  static const double drawerFontSize = 19;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        //drawer header
        DrawerHeader(
          child: CircleAvatar(
            backgroundColor: Colors.purple[900],
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 27,
              ),
            ),
          ),
        ),

        //Count it tab
        ListTile(
          leading: Icon(Icons.home, size: 30, color: Colors.grey[700]),
          title: const Text('Count it',
              style: TextStyle(fontSize: drawerFontSize)),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacementNamed(context, '/home');
          },
        ),

        //Firebase Page tab
        ListTile(
          leading: Icon(Icons.ballot, size: 30, color: Colors.grey[700]),
          title: const Text('Firebase Page',
              style: TextStyle(fontSize: drawerFontSize)),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacementNamed(context, '/firebase_page');
          },
        ),

        //Amawulire page tab
        ListTile(
          leading: Icon(Icons.newspaper, size: 30, color: Colors.grey[700]),
          title: const Text('Amawulire',
              style: TextStyle(fontSize: drawerFontSize)),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacementNamed(context, '/amawulire');
          },
        ),

        //Weather Page tab
        ListTile(
          leading: Icon(Icons.sunny, size: 30, color: Colors.grey[700]),
          title:
              const Text('Weather', style: TextStyle(fontSize: drawerFontSize)),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacementNamed(context, '/weather');
          },
        ),
      ]),
    );
  }
}
