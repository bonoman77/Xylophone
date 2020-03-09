import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void clickAudioPlay(int num) {
  final player = AudioCache();
  player.play('note$num.wav');

  print('press $num button');
}

Expanded xyloButton(Color colorName, int num) {
  return Expanded(
    child: FlatButton(
      color: colorName,
      onPressed: () {
        clickAudioPlay(num);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                xyloButton(Colors.red, 1),
                xyloButton(Colors.orange, 2),
                xyloButton(Colors.yellow, 3),
                xyloButton(Colors.green, 4),
                xyloButton(Colors.blue, 5),
                xyloButton(Colors.blue.shade900, 6),
                xyloButton(Colors.purple, 7),
              ],
            ),
          )),
    );
  }
}
