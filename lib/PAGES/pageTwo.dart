import 'package:flutter/material.dart';

class pageTwo extends StatefulWidget {
  const pageTwo({super.key});

  @override
  State<pageTwo> createState() => _pageTwoState();
}

class _pageTwoState extends State<pageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page 2 flutter practice"),
      ),
    );
  }
}
