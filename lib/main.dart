import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
          scaffoldBackgroundColor: bc1,
          appBarTheme: const AppBarTheme(elevation: 0, backgroundColor: bc1)),
      home: const HomePage(),
    );
  }
}
