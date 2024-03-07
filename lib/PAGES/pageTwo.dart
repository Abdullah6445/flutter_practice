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
                trailing: Container(
                  // color: Colors.yellow,
                  width: MediaQuery.of(context).size.width * (.25),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.call),
                        Icon(Icons.mail_outline_outlined),
                        Icon(Icons.camera_alt),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: names.length,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * (.3),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Center(child: Text(names[index]));
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 3,
                );
              },
              itemCount: names.length),
        ),
        Container(
          height: MediaQuery.of(context).size.height * (.05),
          color: Colors.amberAccent,
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * (.2),
                color: Colors.green,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * (.2),
                  color: Colors.black,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * (.2),
                color: Colors.blue,
              ),
              Container(
                width: MediaQuery.of(context).size.width * (.2),
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
