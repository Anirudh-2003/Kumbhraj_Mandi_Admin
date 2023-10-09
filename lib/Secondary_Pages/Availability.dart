import 'package:flutter/material.dart';

class MyAvailable extends StatelessWidget {
  const MyAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    var textValue = "Storage Is Not Available";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Storage Availability"),
        centerTitle: true,
      ),
      body: Center(
          child: SwitchScreen()
      ),
    );
  }
}

class SwitchScreen extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;
  var textValue = 'Storage Is Not Available';

  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Storage Is Available';
      });
      print('Storage Is Available');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'Storage Is Not Available';
      });
      print('Storage Is Not Available');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ Transform.scale(
            scale: 2,
            child: Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: Colors.green,
              activeTrackColor: Colors.grey,
              inactiveThumbColor: Colors.red,
              inactiveTrackColor: Colors.grey,
            )
        ),
          Text('$textValue', style: TextStyle(fontSize: 20),)
        ]);
  }
}
