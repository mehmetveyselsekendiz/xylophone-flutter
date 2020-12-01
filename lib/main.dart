import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded soundBand(Color colorBand, int soundNumber) {
    return Expanded(
      child: Container(
        color: colorBand,
        child: FlatButton(
          onPressed: () {
            final player = AudioCache();
            player.play('note$soundNumber.wav');
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              soundBand(Colors.red, 1),
              soundBand(Colors.orange, 2),
              soundBand(Colors.yellow, 3),
              soundBand(Colors.green, 4),
              soundBand(Colors.teal, 5),
              soundBand(Colors.blue, 6),
              soundBand(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
