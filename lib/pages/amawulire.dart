import 'package:flutter/material.dart';
import 'drawer.dart';

class Amawulire extends StatefulWidget {
  const Amawulire({super.key, required this.title});
  //This widget is the home page of your application. It is stateful.

  final String title;

  @override
  State<Amawulire> createState() => _AmawulireState();
}

class _AmawulireState extends State<Amawulire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //widget represents the MyHomePage object
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text(
          'Here is another page awaiting content!',
          style: TextStyle(fontSize: 20),
        ),
      ),
      drawer: MyDrawer(
        title: widget.title,
      ),
    );
  }
}
