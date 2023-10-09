import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStorage extends StatelessWidget {
  const MyStorage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Storage Locations"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Storage Name",
                labelText: "Storage Name",
                icon: Icon(Icons.note),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Storage Address",
                labelText: "Storage Address",
                icon: Icon(Icons.note),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: () => _showToast(context),
              child: Text("Add Storage"),
              style: TextButton.styleFrom(),
            ),
          ),
        ],
      ),
    );
  }
}

void _showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Updated Sucessfully'),
    ),
  );
}