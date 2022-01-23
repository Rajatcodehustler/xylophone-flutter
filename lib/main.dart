import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int SN) {
    final player = AudioCache();
    player.play('note$SN.wav');
  }
  Expanded buildkey({Color color ,int c}){
    return Expanded(
      child: Container(
        color: color,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            play(c);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                  children: [
                    buildkey(color: Colors.red,c:1),
                    buildkey(color: Colors.orange,c:2),
                    buildkey(color: Colors.yellow,c:3),
                    buildkey(color: Colors.green,c:4),
                    buildkey(color: Colors.teal,c:5),
                    buildkey(color: Colors.blue,c:6),
                    buildkey(color: Colors.purple,c:7),
                  ],
                ),
              ),
          ),
          ),
        );
  }
}

