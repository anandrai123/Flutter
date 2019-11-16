import 'package:flutter/material.dart';


void main() { 
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  Widget build(BuildContext context){
    return MaterialApp(
    title: 'Flutter App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.pink,
      accentColor: Colors.lightBlue,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('flutter'),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('I am the line one'),
            Text('I am line two'),
            RaisedButton(
              onPressed: (){},
              child: Text('SignUp'),
              color: Colors.orange,
              splashColor: Colors.blue,
            )
          ],
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){} ,
        child: Icon(
          Icons.add_a_photo,
          color: Colors.lightGreen,
        ),
        ),
      ),
  );

  }
}