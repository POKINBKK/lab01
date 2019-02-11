import 'package:flutter/material.dart';
import './ui/second_screen.dart';
import './ui/my_custom_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      //home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/": (context) => MyCustomForm(),
        "/second": (context) => SecondScreen(),
      }
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Hello"),
//           bottom: TabBar(tabs: <Widget>[
//             Tab(
//               icon: Icon(Icons.cake),
//             ),
//             Tab(
//               icon: Icon(Icons.camera),
//             ),
//             Tab(
//               icon: Icon(Icons.calendar_today),
//             ),
//           ],),
//         ),
//       body: TabBarView(
//         children: <Widget>[
//           Icon(Icons.brightness_medium),
//           Icon(Icons.battery_alert),
//           Icon(Icons.atm),
//         ],
//       ),
//       ),
//       );
//   }
// }
