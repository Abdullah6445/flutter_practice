// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter_practice/PAGES/pageFive.dart';
import 'package:flutter_practice/PAGES/mainpage.dart';
// import 'package:flutter_practice/pageSix.dart';
// import 'package:flutter_practice/PAGES/pageFour.dart';
// import 'package:flutter_practice/PAGES/pageOne.dart';
// import 'package:flutter_practice/PAGES/pageThree.dart';
// import 'package:flutter_practice/PAGES/pageOne.dart';
// import 'package:flutter_practice/PAGES/pageTwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterPractice",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: false,
        textTheme: TextTheme(
          bodyMedium: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w900, color: Colors.black),
          bodySmall: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: Colors.red.shade400),
          bodyLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              color: Colors.red.shade900),
        ),

        // colorSchemeSeed: Colors.pink,
        // useMaterial3: false,
      ),
      home: mainPage(),
    );
  }
}
