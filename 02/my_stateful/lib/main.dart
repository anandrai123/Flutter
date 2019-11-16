import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
  
}
class MyButton extends StatefulWidget{
  @override
  MyButtonState createState(){
   return  MyButtonState();
}
}

class MyButtonState extends State<MyButton>{
  int counter =0;
  List<String> spanishNumber=[
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz",
  ];
  String defaultText ="Spanish numbers";
  void displaySNumber(){
    setState(() {
     defaultText = spanishNumber[counter]; 
     if(counter<9){
       counter++;

     }
     else{
       counter=0;
     }
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('My Stateful App'),
        backgroundColor: Colors.orange,

      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(defaultText, style: TextStyle(fontSize: 30.0)),
              Padding(padding: EdgeInsets.all(10.0),),
              RaisedButton(
                child: Text('call numbers',style: TextStyle(color: Colors.white),
                ),
                onPressed: displaySNumber,
                color: Colors.orange,
              )
            ],
          ),
        ),
      ),
      );
  }
}