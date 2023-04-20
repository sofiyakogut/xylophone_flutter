import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    void playSound(int numeroSonido)
    {
      final player = AudioPlayer();
      player.setSourceAsset('note$numeroSonido.wav');
      player.play(
        AssetSource('note$numeroSonido.wav'),
      );
    }
    Expanded buildKey({required Color color, required int numeroSonido}){
      return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.all(0.0)),
          child: Container(
            color: color,
          ),
          onPressed: () {
            playSound(numeroSonido);
          },
        ),
      );
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              buildKey(color: Colors.purple.shade50, numeroSonido: 1),
              buildKey(color: Colors.purple.shade100, numeroSonido: 2),
              buildKey(color: Colors.purple.shade200, numeroSonido: 3),
              buildKey(color: Colors.purple.shade300, numeroSonido: 4),
              buildKey(color: Colors.purple.shade400, numeroSonido: 5),
              buildKey(color: Colors.purple.shade500, numeroSonido: 6),
              buildKey(color: Colors.purple.shade600, numeroSonido: 7),
            ],
          ),
        ),
      ),
    );
  }
}
