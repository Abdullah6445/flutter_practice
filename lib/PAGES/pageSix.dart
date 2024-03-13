// ignore_for_file: file_names, camel_case_types, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class pageSix extends StatefulWidget {
  const pageSix({super.key});

  @override
  State<pageSix> createState() => _pageSixState();
}

class _pageSixState extends State<pageSix> {
  List<String> names = [
    "Abdullah",
    "Talha",
    "Maaz",
    "Zeeshan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        toolbarHeight: MediaQuery.of(context).size.height * (.20),
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                width: double.infinity,
                child: SearchBar(
                  shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                      side: BorderSide(color: Colors.white))),
                  hintText: "Search here...",
                  leading: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: MediaQuery.of(context).size.height * (.05),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.green.shade300),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home,
                    size: MediaQuery.of(context).size.height * (.05),
                  ),
                  Icon(
                    Icons.play_circle_sharp,
                    size: MediaQuery.of(context).size.height * (.05),
                  ),
                  Icon(
                    Icons.contact_phone,
                    size: MediaQuery.of(context).size.height * (.05),
                  ),
                  Icon(
                    Icons.notification_add_rounded,
                    size: MediaQuery.of(context).size.height * (.05),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Image.asset(
                  "assets/images/whatssapp.png",
                ),
                title: Text(
                  names[index],
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
                subtitle: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Add"),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {},
                        child: Text("Remove"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        itemCount: names.length,
      ),
    );
  }
}
