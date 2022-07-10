import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AssetsAudioPlayer();
    player.open(
      Audio("assets/note$num.wav"),
    );
    player.play();
  }

  Expanded buildKey(Color color, int num) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          playSound(num);
        },
        height: 30.0,
        minWidth: double.infinity,
        color: color,
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
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.green.shade800, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
