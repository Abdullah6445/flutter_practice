import 'package:flutter/material.dart';

class customDrawer extends StatelessWidget {
  const customDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            leading:
                Icon(Icons.help_center_outlined, size: 30, color: Colors.black),
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
    );
  }
}
