import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'pages/home_page.dart';
import 'pages/firebase_page.dart';
import 'pages/amawulire.dart';
import 'pages/weather_page.dart';
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // ...

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
            const MyFireBasePage(title: 'Firebase Page'),
        '/amawulire': (context) => const Amawulire(title: 'Amawulire'),
        '/weather': (context) => const MyWeatherPage(title: 'Weather Detail')
      },
    );
  }
}
