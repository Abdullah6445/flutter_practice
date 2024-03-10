import 'package:flutter/material.dart';
import 'package:flutter_practice/PAGES/pageFive.dart';
import 'package:flutter_practice/PAGES/pageFour.dart';
import 'package:flutter_practice/PAGES/pageOne.dart';
import 'package:flutter_practice/PAGES/pageSix.dart';
import 'package:flutter_practice/PAGES/pageThree.dart';
import 'package:flutter_practice/PAGES/pageTwo.dart';

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
              title: Expanded(
                child: Text(
                  "Contact Us",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Divider(thickness: 2, color: Colors.blue),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.help_center_outlined,
                  size: 30, color: Colors.black),
              title: Expanded(
                child: Text(
                  "Help",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                ),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          "Go to pop up menu in app bar and visit each page",
          style: TextStyle(
            color: Colors.red,
            // backgroundColor: Colors.red.shade100,
            decoration: TextDecoration.underline,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}