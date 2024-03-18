import 'package:flutter/material.dart';
import 'package:flutter_practice/PAGES/pageFive.dart';
import 'package:flutter_practice/PAGES/pageFour.dart';
import 'package:flutter_practice/PAGES/pageOne.dart';
import 'package:flutter_practice/PAGES/pageSix.dart';
import 'package:flutter_practice/PAGES/pageThree.dart';
import 'package:flutter_practice/PAGES/pageTwo.dart';

class customAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const customAppbar({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
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
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(
        double.infinity,
        56,
      );
}
