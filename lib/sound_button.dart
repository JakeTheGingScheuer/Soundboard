import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SoundButton extends StatelessWidget{
  final AudioCache cache;
  final String sound;
  final Icon icon;

  SoundButton({this.cache, this.sound, this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () async => await cache.play(sound), icon: icon);
  }
}