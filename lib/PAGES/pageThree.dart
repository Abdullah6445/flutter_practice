import 'package:flutter/material.dart';

class pageThree extends StatefulWidget {
  const pageThree({super.key});

  @override
  State<pageThree> createState() => _pageThreeState();
}

class _pageThreeState extends State<pageThree> {
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
        title: Text("page 3 flutter practice"),
        elevation: 5,
        actions: [
          Column(
            children: [Text("data")],
          )
        ],
      ),
      body: Container(
        // color: Colors.grey.shade300,
        decoration: BoxDecoration(
          // color: Colors.red,
          image: DecorationImage(
            opacity: 0.3,
            scale: 2,
            image: AssetImage("assets/images/whatssapp.png"),
          ),
        ),
      ),
    );
  }
}
