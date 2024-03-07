import 'package:flutter/material.dart';

class pageThree extends StatefulWidget {
  const pageThree({super.key});

  @override
  State<pageThree> createState() => _pageThreeState();
}

class _pageThreeState extends State<pageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CircleAvatar(child: Image.asset("assets/images/img.png")),
        ],
        title: Text("page 3 flutter practice"),
      ),
      body: Container(
        // color: Colors.grey.shade300,
        decoration: BoxDecoration(
          // color: Colors.red,
          image: DecorationImage(
            opacity: 0.3,
            scale: 2,
            image: AssetImage("assets/images/whatssapp.png"),
          ),
        ),
      ),
    );
  }
}
