import 'package:flutter/material.dart';
import 'package:food_app/authentication/auth_screen.dart';
import 'package:food_app/global/global.dart';
import 'package:food_app/mainscreens/home_screen.dart';

//import 'package:food_app/global/global.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        Container(
          padding: EdgeInsets.only(top: 25, bottom: 10),
          child: Column(
            children: [
              Material(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage(sharedPreferences!.getString("photoUrl")!),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                sharedPreferences!.getString("name")!,
                style: TextStyle(
                    color: Colors.black, fontSize: 20, fontFamily: "Train"),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          padding: EdgeInsets.only(top: 1.0),
          child: Column(
            children: [
              Divider(
                height: 10,
                color: Colors.grey,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => HomeScreen()));
                },
              ),
              Divider(
                height: 10,
                color: Colors.grey,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.monetization_on,
                  color: Colors.black,
                ),
                title: Text(
                  "My Earnings",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () {},
              ),
              Divider(
                height: 10,
                color: Colors.grey,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.reorder,
                  color: Colors.black,
                ),
                title: Text(
                  "New Orders",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () {},
              ),
              Divider(
                height: 10,
                color: Colors.grey,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.local_shipping,
                  color: Colors.black,
                ),
                title: Text(
                  "History--Orders",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () {},
              ),
              Divider(
                height: 10,
                color: Colors.grey,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                ),
                title: Text(
                  "Sign Out",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  firebaseAuth.signOut().then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => authscreen()));
                  });
                },
              ),
              Divider(
                height: 10,
                color: Colors.grey,
                thickness: 2,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
