import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Xylophone extends StatelessWidget {
  void playSound(int note) {
    AudioPlayer audioPlayer = AudioPlayer();
    audioPlayer.play("note$note.wav");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildKey(color: Colors.red, noteNumber: 1),
        _buildKey(color: Colors.orange, noteNumber: 2),
        _buildKey(color: Colors.yellow, noteNumber: 3),
        _buildKey(color: Colors.blue, noteNumber: 4),
        _buildKey(color: Colors.green, noteNumber: 5),
        _buildKey(color: Colors.teal, noteNumber: 6),
        _buildKey(color: Colors.white, noteNumber: 7)
      ],
    ));
  }

  Widget _buildKey({Color color, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(noteNumber);
        },
        color: color,
        child: Text(''),
      ),
    );
  }
}
