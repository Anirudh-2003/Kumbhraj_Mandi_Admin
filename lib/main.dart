import 'package:flutter/material.dart';
import 'package:kumbhraj_mandi_admin/Secondary_Pages/Holiday.dart';
import 'package:kumbhraj_mandi_admin/Secondary_Pages/Price.dart';
import 'package:kumbhraj_mandi_admin/Secondary_Pages/storage.dart';
import 'package:kumbhraj_mandi_admin/Utils/Route.dart';
import 'package:kumbhraj_mandi_admin/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.holidayRoute: (context) => MyHoliday(),
        MyRoutes.priceRoute: (context) => MyPrice(),
        MyRoutes.storageRoute: (context) => MyStorage(),
      },
    );
  }
}
