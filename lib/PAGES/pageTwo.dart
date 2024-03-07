import 'package:flutter/material.dart';

class pageTwo extends StatefulWidget {
  const pageTwo({super.key});

  @override
  State<pageTwo> createState() => _pageTwoState();
}

class _pageTwoState extends State<pageTwo> {
  List<String> names = [
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
      appBar: AppBar(
        title: Text("page 2 flutter practice"),
      ),
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * (.3),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Image.asset("assets/images/img.png"),
                ),
                title: Text(
                  names[index],
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                subtitle: Text(
                  "03317012500",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                trailing: Icon(Icons.call),
              );
            },
            itemCount: names.length,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * (.3),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Text(names[index]);
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 3,
                );
              },
              itemCount: names.length),
        ),
      ]),
    );
  }
}
