// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practice/PAGES/pageFive.dart';
import 'package:flutter_practice/PAGES/pageFour.dart';
import 'package:flutter_practice/PAGES/pageOne.dart';
import 'package:flutter_practice/PAGES/pageSix.dart';
import 'package:flutter_practice/PAGES/pageThree.dart';
import 'package:flutter_practice/PAGES/pageTwo.dart';
import 'package:flutter_practice/customWidgets/customCircularButton.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture:
                    Image(image: AssetImage("assets/images/whatssapp.png")),
                accountName: Text(
                  "Abdullah",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic),
                ),
                accountEmail: Text(
                  "abdullahiftikhar6445@gmail.com",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings, size: 30, color: Colors.black),
              title: Text(
                "Settings",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.account_balance_outlined,
                  size: 30, color: Colors.black),
              title: Text(
                "About",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.contact_phone_outlined,
                  size: 30, color: Colors.black),
              title: Text(
                "Contact Us",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Divider(thickness: 2, color: Colors.blue),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.help_center_outlined,
                  size: 30, color: Colors.black),
              title: Text(
                "Help",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("This is main page"),
        // leading: Icon(Icons.flutter_dash),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return pageOne();
                    },
                  ));
                },
                child: ListTile(
                  leading: Icon(Icons.looks_one_outlined),
                  title: Text("Page one"),
                ),
              ),
              PopupMenuItem(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return pageTwo();
                    },
                  ));
                },
                child: ListTile(
                  leading: Icon(Icons.looks_two_outlined),
                  title: Text("Page two"),
                ),
              ),
              PopupMenuItem(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return pageThree();
                    },
                  ));
                },
                child: ListTile(
                  leading: Icon(Icons.looks_3_outlined),
                  title: Text("Page three"),
                ),
              ),
              PopupMenuItem(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return pageFour();
                    },
                  ));
                },
                child: ListTile(
                  leading: Icon(Icons.looks_4_outlined),
                  title: Text("Page four"),
                ),
              ),
              PopupMenuItem(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return pageFive();
                    },
                  ));
                },
                child: ListTile(
                  leading: Icon(Icons.looks_5_outlined),
                  title: Text("Page five"),
                ),
              ),
              PopupMenuItem(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return pageSix();
                    },
                  ));
                },
                child: ListTile(
                  leading: Icon(Icons.looks_6_outlined),
                  title: Text("Page six"),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                readOnly: true,
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 3),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 3),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: MediaQuery.of(context).size.height * (.5),
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  children: [
                    customCircularButton(
                      text: "7",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "8",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "9",
                      callback: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black54),
                      onPressed: () {},
                      child: Text(
                        "/",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    customCircularButton(
                      text: "4",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "5",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "6",
                      callback: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black54),
                      onPressed: () {},
                      child: Text(
                        "x",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    customCircularButton(
                      text: "1",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "2",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "3",
                      callback: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black54),
                      onPressed: () {},
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    customCircularButton(
                      text: "0",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: ".",
                      callback: () {},
                    ),
                    customCircularButton(
                      text: "C",
                      bgColor: Colors.red,
                      callback: () {},
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black54),
                      onPressed: () {},
                      child: Text(
                        "-",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
