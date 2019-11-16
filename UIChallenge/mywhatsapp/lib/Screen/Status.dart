import 'package:flutter/material.dart';
import '../reusable/Wcards.dart';
import '../model/chat.dart';


class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Wcards("My Status", "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", "Tap to add Status"),
        Divider(),
          Heading("Recent updates"),
          Wcards(messageData[1].name, messageData[1].imageUrl,messageData[1].time),
           Wcards(messageData[2].name, messageData[2].imageUrl,messageData[2].time),
        Divider(),
         Heading("Today"),
           Wcards(messageData[3].name, messageData[3].imageUrl,messageData[3].time),
          Wcards(messageData[4].name, messageData[4].imageUrl,messageData[4].time),
          Wcards(messageData[5].name, messageData[5].imageUrl,messageData[5].time),  
        
      ],
      
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;

  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(padding: 
      EdgeInsets.only(top: 5.0,left: 5.0),
      child: Text(
        heading,style:TextStyle(fontSize:16.0,
        fontWeight:FontWeight.bold,
        color:Colors.grey)
      ),
      ),
      
    );
  }
}