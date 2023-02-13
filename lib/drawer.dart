import 'package:card_demo/cardgrid.dart';
import 'package:card_demo/formvalidation.dart';
import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {
  const Drawers({super.key});

  @override
  State<StatefulWidget> createState() {
    return DrawersState();
  }
}

class DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Demo"),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        //backgroundColor: Colors.green,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: CircleAvatar(
                      radius: 40.00,
                      backgroundImage: AssetImage("assets/mayur.jpg"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 3.0),
                    child: Text(
                      "Mayur Bharda",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  Text(
                    "mayur.bharda@gmail.com",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ),

            // UserAccountsDrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.green,
            //   ),
            //   accountName: Text(
            //     "Mayur Bharda",
            //     style: TextStyle(fontSize: 18),
            //   ),
            //   accountEmail: Text("mayur.bharda@gmail.com"),
            //   currentAccountPictureSize: Size.square(50),
            //   currentAccountPicture: CircleAvatar(
            //     backgroundImage: AssetImage(
            //       "assets/mayur.jpg",
            //     ),
            //     //backgroundColor: Color.fromARGB(255, 165, 255, 137),
            //     // child: Image.asset(
            //     //   "assets/mayur.jpg",
            //     //   fit: BoxFit.cover,
            //     // ),
            //
            //     // Text(
            //     //   "M",
            //     //   style: TextStyle(fontSize: 30, color: Colors.blue),
            //     // ),
            //   ),
            // )),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("My Profile"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const FormValidations()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('My Course'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const CardGrid()));
              },
            ),
            const ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text('Go Premium'),
            ),
            const ListTile(
              leading: Icon(Icons.video_label),
              title: Text("Saved Videos"),
            ),
            const ListTile(
              leading: Icon(Icons.edit),
              title: Text("Edit Profile"),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("LogOut"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
