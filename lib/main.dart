import 'package:flutter/material.dart';
import 'package:flutter_practice/PAGES/pageOne.dart';
import 'package:flutter_practice/PAGES/pageThree.dart';
// import 'package:flutter_practice/PAGES/pageOne.dart';
import 'package:flutter_practice/PAGES/pageTwo.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,

        // colorSchemeSeed: Colors.pink,
        // useMaterial3: false,
      ),
      // primarySwatch: Colors.purple, useMaterial3: false),
      home: const pageOne(),
    );
  }
}
