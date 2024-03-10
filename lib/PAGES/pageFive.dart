// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class pageFive extends StatefulWidget {
  const pageFive({super.key});

  @override
  State<pageFive> createState() => _pageFiveState();
}

class _pageFiveState extends State<pageFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: Text("page fiveAGES/pageFive.dart"),
      ),
      // ignore: prefer_const_constructors
      body: Container(
        color: Colors.red.shade300,
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Card(
            elevation: 200,
            shadowColor: Colors.red,
            margin: EdgeInsets.all(10),
            color: Colors.red.shade100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Input form fields"),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade400,
                        filled: true,
                        hintText: "enter your Age",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "enter your name",
                        hintStyle: TextStyle(fontSize: 20),
                        labelText: "enter name",
                        labelStyle: TextStyle(fontSize: 25),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 3)),
                        // helperText: "atleast 10 characters",
                        // hintStyle: TextStyle(fontSize: 30, color: Colors.green),
                        // border: OutlineInputBorder(),
                        // focusedBorder: OutlineInputBorder(),
                        // disabledBorder: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: "enter descriptions",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(60),
                            ),
                            borderSide: BorderSide(color: Colors.pink)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(80)),
                          borderSide: BorderSide(color: Colors.pink, width: 3),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        counterText: "enter some data",
                        counterStyle: TextStyle(fontSize: 15),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orange, width: 4),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        helperText: "atleast 8 characters",
                        helperStyle: TextStyle(fontSize: 15),
                        prefixIcon: Icon(Icons.security),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        hintText: "enter your password",
                        labelText: "password",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 3),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.purple, width: 3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
