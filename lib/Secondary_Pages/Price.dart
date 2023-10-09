import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class MyPrice extends StatelessWidget {
  const MyPrice({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedValue = 'Gehu';
    return Scaffold(
        appBar: AppBar(
          title: Text("Set Prices"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            children: [
              Text("Select Weed", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Select an item',
                    border: OutlineInputBorder(),
                    suffixIcon: DropdownButtonFormField(
                      value: selectedValue,
                      onChanged: (newValue) {
                        selectedValue = newValue;
                      },
                      items: <String>['Gehu','Chana','Dal','Dhaniya','Sarso','Chawal'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Price",
                    labelText: "Price",
                    icon: Icon(Icons.currency_rupee),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  onPressed: () => _showToast(context),
                  child: Text("Set Price"),
                  style: TextButton.styleFrom(),
                ),
              ),
            ],
          ),
        ),
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
