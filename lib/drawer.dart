import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumbhraj_mandi_admin/Utils/Route.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green,
        child: ListView(children: [
          Center(
            child: DrawerHeader(
                child: Text(
              "Admin App Settings",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            )),
          ),
          ListTile(
              leading: Icon(CupertinoIcons.calendar, color: Colors.white),
              title: Text(
                "Mark Holidays",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.3,
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.holidayRoute);
              }),
          ListTile(
            leading: Icon(Icons.currency_rupee, color: Colors.white),
            title: Text(
              "Set Prices For Weeds",
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.3,
            ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.priceRoute);
              }
          ),
          ListTile(
            leading: Icon(CupertinoIcons.house, color: Colors.white),
            title: Text(
              "Add Storage Locations",
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.3,
            ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.storageRoute);
              }
          ),
        ]),
      ),
    );
  }
}
