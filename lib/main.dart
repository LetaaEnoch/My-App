import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'pages/home_page.dart';
import 'pages/firebase_page.dart';
import 'pages/amawulire.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      theme: ThemeData(
        // This is the theme of the application.
        primarySwatch: Colors.deepPurple,
        splashColor: Colors.pink[300],
      ),
      home: const MyHomePage(title: 'Count it'),
      routes: {
        '/home': (context) => const MyHomePage(title: 'Count it'),
        '/firebase_page': (context) =>
            const MyFireBasePage(title: 'Firebase_Page'),
        '/amawulire': (context) => const Amawulire(title: 'Amawulire'),
      },
    );
  }
}
