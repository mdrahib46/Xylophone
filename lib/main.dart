import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( const
    XyloPhone(),
  );
}

class XyloPhone extends StatelessWidget {
  const XyloPhone({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded keyPad({required Color color, required int soundNum}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color, enableFeedback: false),
        onPressed: () {
          playSound(soundNum);
        },
        child: const Icon(null),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              keyPad(color: Colors.pink, soundNum: 1),
              keyPad(color: Colors.redAccent, soundNum: 2),
              keyPad(color: Colors.orange, soundNum: 3),
              keyPad(color: Colors.lime, soundNum: 4),
              keyPad(color: Colors.green, soundNum: 5),
              keyPad(color: Colors.teal, soundNum: 6),
              keyPad(color: Colors.blue, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
