import 'package:flutter/material.dart';
import 'drawer.dart';

class MyWeatherPage extends StatefulWidget {
  const MyWeatherPage({super.key, required this.title});

  final String title;

  @override
  State<MyWeatherPage> createState() => _MyWeatherPageState();
}

class _MyWeatherPageState extends State<MyWeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: const Center(
        child: Text(
          'This is page will display your weather information!',
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
