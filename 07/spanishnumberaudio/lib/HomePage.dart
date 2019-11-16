import 'dart:math';

import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audio_cache.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
AudioCache audioPlayer = AudioCache();

List<NumberAudio> numberList =[
  NumberAudio("one.wav",Colors.red,"One"),
  NumberAudio("two.wav",Colors.blue,"two"),
  NumberAudio("three.wav",Colors.green,"three"),
  NumberAudio("four.wav",Colors.pink,"four"),
  NumberAudio("five.wav",Colors.brown,"five"),
  NumberAudio("six.wav",Colors.blueGrey,"six"),
  NumberAudio("seven.wav",Colors.teal,"seven"),
  NumberAudio("eight.wav",Colors.grey,"eight"),
  NumberAudio("nine.wav",Colors.orange,"nine"),
  NumberAudio("ten.wav",Colors.purple,"ten"),
];


play(String uri){
  audioPlayer.play(uri);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Numbers'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(image: AssetImage("images/logo.png"),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    ),
                    itemCount: numberList.length,
                    itemBuilder: (context,i)=>SizedBox(
                      width: 100.0,
                      height: 50.0,
                      child: RaisedButton(
                        color: numberList[i].buttonColor,
                        child: Text(numberList[i].buttonText,
                        style:TextStyle(
                          fontSize:20.0,
                          color:Colors.white,
                        ),
                        ),
                        onPressed: (){
                          play(numberList[i].audioUri);
                        },
                      ),
                    ),
                ),
              )
            ],
            ),
        ),
      ),
      
    );
  }
}