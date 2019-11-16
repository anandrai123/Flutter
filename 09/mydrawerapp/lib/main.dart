import 'package:flutter/material.dart';
import 'package:mydrawerapp/Category.dart';
import 'package:mydrawerapp/MyHomePage.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Drawer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: <String,WidgetBuilder>{
        "/a":(BuildContext context)=>Category()
        
      },
    );
  }
}