import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1),
                buildKey(2),
                buildKey(3),
                buildKey(4),
                buildKey(5),
                buildKey(6),
                buildKey(7),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildKey(int number) => Expanded(
        child: FlatButton(
          color: Colors.brown[number * 100],
          onPressed: () {
            final player = AudioCache();
            player.play("note$number.wav");
          },
          child: Text("Note $number"),
        ),
      );
}
