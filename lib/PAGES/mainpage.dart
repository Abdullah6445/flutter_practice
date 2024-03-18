// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practice/customWidgets/customAppbar.dart';
import 'package:flutter_practice/customWidgets/customCircularButton.dart';
import 'package:flutter_practice/customWidgets/customDrawer.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: customDrawer(),
      appBar: customAppbar(titleText: "This is custom appbar"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                readOnly: true,
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 3),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 3),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: MediaQuery.of(context).size.height * (.5),
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  children: [
                    customCircularButton(
                      text: "7",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "8",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "9",
                      callback: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black54),
                      onPressed: () {},
                      child: Text(
                        "/",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    customCircularButton(
                      text: "4",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "5",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "6",
                      callback: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black54),
                      onPressed: () {},
                      child: Text(
                        "x",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    customCircularButton(
                      text: "1",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "2",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "3",
                      callback: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black54),
                      onPressed: () {},
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    customCircularButton(
                      text: "0",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: ".",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "C",
                      bgColor: Colors.red,
                      callback: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black54),
                      onPressed: () {},
                      child: Text(
                        "-",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
