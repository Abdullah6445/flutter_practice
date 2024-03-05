// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class pageOne extends StatefulWidget {
  const pageOne({super.key});

  @override
  State<pageOne> createState() => _pageOneState();
}

class _pageOneState extends State<pageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Ui")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          // width: MediaQuery.of(context).size.width * 1,
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: const Text(
                      "text",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                            side: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                          elevation: 10,
                          shadowColor: Colors.blue),
                      onPressed: () {},
                      child: const Text("elevated button"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("Text button"),
                      ),
                      OutlinedButton(
                          onPressed: () {},
                          child: const Text("outlined button"))
                    ],
                  ),
                  Center(
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 3),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                          ),
                          color: Colors.greenAccent),
                      child: Center(
                          child: Text(
                        "normal container",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green,
                          spreadRadius: 5,
                          blurRadius: 9,
                        ),
                      ],
                    ),
                    child: Center(child: Text("design container")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "stylish text",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                            backgroundColor: Colors.amberAccent.shade100),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      height: 100,
                      child: InkWell(
                          onTap: () {
                            print("image is clicked");
                          },
                          child: Image.asset("assets/images/img.png")),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Color.fromARGB(255, 108, 7, 67),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Color.fromARGB(255, 223, 44, 44),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: const Color.fromARGB(255, 80, 64, 18),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: const Color.fromARGB(255, 40, 255, 7),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Color.fromARGB(255, 105, 70, 176),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
