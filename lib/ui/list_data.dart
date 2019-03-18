
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';
// import '../model/post.dart';

// class ListData extends StatelessWidget{

//   Future loadPost() async{
//     Response resp = await get("https://jsonplaceholder.typicode.com/posts");
//     List<dynamic> data = json.decode(resp.body);
//     List<Post> posts = List();
//     data.forEach((d) {
//       posts.add(Post.fromJson(d));
//     });
//     print(posts.length);
//     print(posts.elementAt(20).title);
//     return posts;

//     //Map<String, dynamic> data = json.decode(resp.body);
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(appBar: AppBar(
//                       title: Text("list data"),
//                       ),
//                       body: Column(
//                         children: <Widget>[
//                           RaisedButton(
//                             child: Text("Load Data"),
//                             onPressed: loadPost,
//                           )
//                         ],
//                       ),
//                       );
//   }
  
// }
