import 'package:flutter/material.dart';
import 'add_contact.dart';
import 'edit_contact.dart';
import 'view_contact.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  DatabaseReference _databaseReference=FirebaseDatabase.instance.reference();

  navigateToAddScreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
        return AddContact();
    }));
  }

   navigateToViewScreen(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      //Add id
        return ViewContact();
    }));
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: navigateToAddScreen,
      ),
      
    );
  }
}