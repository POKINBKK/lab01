import 'dart:io';

import 'package:flutter/material.dart';
import './detail_screen.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FirstScreenState();
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("First Screen"),
  //     ),
  //     body: Center(
  //       child: FlatButton(
  //         child: Text("Go to Second"),
  //         onPressed: (){
  //           Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //           builder: (context) => DetailScreen(title: "Hello"),
  //           ),
  //           );
  //         },
  //       )
  //     ),
  //   );
  // }

}

class FirstScreenState extends State {
  List<String> _passengers = <String>["", "1", "2", "3", "4", "5"];
  String _passenger = "";
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
          _image = image;
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: (){
          getImage();
        },
      ),
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Form(
        child: ListView(
        children: <Widget>[
          _image == null ? Text("No Image selected") : Image.file(_image),
          InputDecorator(
            decoration: InputDecoration(
              labelText: "YO"
            ),
            isEmpty: _passenger == "",
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: _passenger,
                onChanged: (value){
                  setState(() {
                    _passenger = value;
                  });
                },
                items: _passengers.map((String value){
                  return DropdownMenuItem <String>(
                    child: Text(value),
                    value: value,
                  );
                }
                ).toList(),
              ),
            ),
          ),
          DateTimePickerFormField(
            inputType: InputType.date,
            format: DateFormat("yyyy-MM-dd"),
            decoration: InputDecoration(labelText: "Date"),
          ),

        ],
        ),
      ),
    );
  }

}