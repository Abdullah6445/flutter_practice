import 'package:flutter/material.dart';

class pageThree extends StatefulWidget {
  const pageThree({super.key});

  @override
  State<pageThree> createState() => _pageThreeState();
}

class _pageThreeState extends State<pageThree> {
  List<String> names = [
    "noman",
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
        title: Text("Abdullah WhatsApp"),
        elevation: 5,
        actions: [
          Column(
            children: [Text("data")],
          )
        ],
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            scale: 3,
            opacity: 0.1,
            image: AssetImage("assets/images/whatssapp.png"),
          ),
        ),
        height: MediaQuery.of(context).size.height * (1),
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
      // Container(
      //   // color: Colors.grey.shade300,
      //   decoration: BoxDecoration(
      //     // color: Colors.red,
      //     image: DecorationImage(
      //       opacity: 0.3,
      //       scale: 2,
      //       image: AssetImage("assets/images/whatssapp.png"),
      //     ),
      //   ),
      // ),
    );
  }
}
