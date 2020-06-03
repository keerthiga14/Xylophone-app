import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(xylophoneApp());

class xylophoneApp extends StatelessWidget {
  void playsound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }
  Expanded button({Color color,int value}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed:(){
          playsound(value);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                button(color: Colors.red,value: 1),
                button(color: Colors.orange,value: 2),
                button(color: Colors.yellow,value: 3),
                button(color: Colors.green,value: 4),
                button(color: Colors.teal,value: 5),
                button(color: Colors.blue,value: 6),
                button(color: Colors.purple,value: 7),
              ],
            ),
        ),
      ),
    );
  }
}
