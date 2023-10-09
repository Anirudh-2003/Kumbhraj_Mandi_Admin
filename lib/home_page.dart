import 'package:flutter/material.dart';
import 'package:kumbhraj_mandi_admin/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kumbhraj Mandi Admin App"),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Image.asset("Assets/images/dhaniya.jpg",
                              height: 300, width: 300,).py12(),
                          Text("Welcome To Kumbhraj Mandi Admin App",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,

                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
