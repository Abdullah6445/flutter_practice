// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_practice/customWidgets/customAppbar.dart';

class pageThree extends StatefulWidget {
  const pageThree({super.key});

  @override
  State<pageThree> createState() => _pageThreeState();
}

class _pageThreeState extends State<pageThree> {
  List<String> names = [
    "noman",
    "abdullah",
    "zeeshan",
    "amir",
    "ammar",
    "hasnat",
    "abdullah",
    "zeeshan",
    "amir",
    "ammar",
    "hasnat"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Abdullah WhatsApp"),
      //   elevation: 5,
      // ),

      appBar: customAppbar(titleText: "This is Page 3"),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            scale: 3,
            opacity: 0.1,
            image: AssetImage("assets/images/whatssapp.png"),
          ),
        ),
        height: MediaQuery.of(context).size.height * (1),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Image.asset("assets/images/img.png"),
              ),
              title: Text(
                names[index],
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Text(
                "03317012500",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              trailing: Container(
                // color: Colors.yellow,
                width: MediaQuery.of(context).size.width * (.30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.call),
                    Icon(Icons.mail_outline_outlined),
                    Icon(Icons.camera_alt),
                  ],
                ),
              ),
            );
          },
          itemCount: names.length,
        ),
      ),
    );
  }
}
