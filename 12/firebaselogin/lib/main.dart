import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'SignUp.dart';
import 'signIn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      
      routes: <String,WidgetBuilder>{
        "/signInPage":(BuildContext context)=> SignIn(),
           "/signUpPage":(BuildContext context)=> SignUp(),

      },
      
      
    );
  }
}