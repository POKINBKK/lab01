import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Image.asset(
              "assets/Koala.jpg",
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Please input your Email",
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
              validator: (value) {
                if (value.isEmpty) {
                  return "Please input value";
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Please input your Password",
                icon: Icon(Icons.lock),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              onSaved: (value) => print(value),
              validator: (value) {
                if (value.isEmpty) {
                  return "Please input value";
                }
              },
            ),
            RaisedButton(
              child: Text("submit"),
              onPressed: () {
                _formKey.currentState.validate();
              },
            ),
          ],
        ),
      ),
    );
  }
}
