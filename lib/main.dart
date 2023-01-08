import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thirdproject/screens/WelcomeScreen.dart';
import 'package:thirdproject/screens/detailscreen.dart';
import 'package:thirdproject/screens/homescreen.dart';
import 'package:thirdproject/vesel/data.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.brown,
        primaryColor: Colors.brown),
    home: detailscreen(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized;
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Scaffold(
      body: homescreen(),
    );
  }
}
