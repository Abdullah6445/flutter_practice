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
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Image.asset("assets/images/img.png"),
              ),
              title: Text("abdullah"),
              subtitle: Text("03317012500"),
              trailing: Icon(Icons.call),
            );
          },
          itemCount: 50,
        ));
  }
}
