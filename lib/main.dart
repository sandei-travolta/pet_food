import 'package:flutter/material.dart';
import 'package:pet_food/src/screens/home_screen.dart';
import 'package:pet_food/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primayColor),
        useMaterial3: true,
      ),
      home: HomeScreen()
    );
  }
}
