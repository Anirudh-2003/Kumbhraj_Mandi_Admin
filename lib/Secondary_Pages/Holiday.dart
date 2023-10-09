import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyHoliday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Holiday(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class Holiday extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Holiday();
  }
}

class _Holiday extends State<Holiday> {
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("Mark Holidays"),
          centerTitle: true,
          backgroundColor: Colors.green, //background color of app bar
        ),
        body:Container(
            padding: EdgeInsets.all(8),
            child:Center(
                child:Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                          controller: dateinput, //editing controller of this TextField
                          decoration: InputDecoration(
                            hintText: "Enter Date",
                              icon: Icon(Icons.calendar_today), //icon of text field
                              labelText: "From" //label text of field
                          ),
                          readOnly: true,  //set it true, so that user will not able to edit text
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context, initialDate: DateTime.now(),
                                firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101)
                            );

                            if(pickedDate != null ){
                              print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(formattedDate); //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              setState(() {
                                dateinput.text = formattedDate; //set output date to TextField value.
                              });
                            }else{
                              print("Date is not selected");
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                          controller: dateinput, //editing controller of this TextField
                          decoration: InputDecoration(
                            hintText: "Enter Date",
                              icon: Icon(Icons.calendar_today), //icon of text field
                              labelText: "To" //label text of field
                          ),
                          readOnly: true,  //set it true, so that user will not able to edit text
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context, initialDate: DateTime.now(),
                                firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101)
                            );

                            if(pickedDate != null ){
                              print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(formattedDate); //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              setState(() {
                                dateinput.text = formattedDate; //set output date to TextField value.
                              });
                            }else{
                              print("Date is not selected");
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Reason",
                            labelText: "Reason",
                            icon: Icon(Icons.note),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                            onPressed: () => _showToast(context),
                            child: Text("Mark Holiday"),
                            style: TextButton.styleFrom(),
                        ),
                      ),
                    ],
                  ),
                )
            )
        )
    );
  }
}

void _showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Added Sucessfully'),
    ),
  );
}
