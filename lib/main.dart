import 'package:flutter/material.dart';
import 'package:portfolio/pages/home.dart';
import 'package:portfolio/utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Portfolio",
      themeMode: ThemeMode.system,
      theme: ThemeData(
        fontFamily: "HindSiliguri",
        brightness: Brightness.light,
        primaryColor: primary,
      ),
      home: HomeScreen(),
    );
  }
}
