import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:soundboard/sound_button.dart';
import 'package:soundboard/sounds.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final AudioCache cache = new AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 35, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SoundButton(cache: cache, sound: Sounds.toBeContinued, icon: Icon(Icons.accessible_forward, size: 60)),
                SoundButton(cache: cache, sound: Sounds.sad, icon: Icon(Icons.airline_seat_flat, size: 60)),
                SoundButton(cache: cache, sound: Sounds.bruh, icon: Icon(Icons.airline_seat_legroom_reduced, size: 60)),
              ],
            ),
            SizedBox(height:60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SoundButton(cache: cache, sound: Sounds.georgeMichaels, icon: Icon(Icons.music_note, size: 60)),
                SoundButton(cache: cache, sound: Sounds.priceIsWrong, icon: Icon(Icons.weekend, size: 60)),
                SoundButton(cache: cache, sound: Sounds.johnCena, icon: Icon(Icons.icecream, size: 60)),
              ],
            ),
            SizedBox(height:60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SoundButton(cache: cache, sound: Sounds.theyAsk, icon: Icon(Icons.link, size: 60)),
                SoundButton(cache: cache, sound: Sounds.ohNoLaugh, icon: Icon(Icons.group, size: 60)),
                SoundButton(cache: cache, sound: Sounds.darthVaderNo, icon: Icon(Icons.print, size: 60)),
              ],
            )
          ],
        ),
      )
    );
  }
}
