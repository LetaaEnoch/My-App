import 'package:flutter/material.dart';
import 'drawer.dart';

class MyFireBasePage extends StatefulWidget {
  const MyFireBasePage({super.key, required this.title});
  //This widget is the home page of your application. It is stateful.

  final String title;

  @override
  State<MyFireBasePage> createState() => _MyFireBasePageState();
}

class _MyFireBasePageState extends State<MyFireBasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //widget represents the MyHomePage object
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text(
          'This is a firebase page. I will put some firebase content here',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      drawer: MyDrawer(
        title: widget.title,
      ),
    );
  }
}
