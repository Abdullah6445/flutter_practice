// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class pageFour extends StatefulWidget {
  const pageFour({super.key});

  @override
  State<pageFour> createState() => _pageFourState();
}

class _pageFourState extends State<pageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageFour card"),
        // clipBehavior: null,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            scale: 2,
            opacity: 0.7,
            image: AssetImage("assets/images/whatssapp.png"),
          ),
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
                elevation: 10,
                shadowColor: Colors.black,
                color: Colors.green.shade500,
                child: ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    title: Text(
                      "abdullah",
                      style: TextStyle(color: Colors.white),
                    )));
          },
          itemCount: 50,
        ),
      ),
    );
  }
}
