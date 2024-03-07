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
        title: Text("page five"),
      ),
    );
  }
}
