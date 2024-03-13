import 'package:flutter/material.dart';

class customCircularButton extends StatelessWidget {
  final String text;
  final VoidCallback? callback;
  final Color? bgColor;

  const customCircularButton({
    super.key,
    required this.text,
    this.callback,
    this.bgColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: CircleBorder(
          side: BorderSide(color: Colors.black, width: 3),
        ),
      ),
      onPressed: () {
        callback!();
      },
      child: Text(
        text,
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),
      ),
    );
  }
}
