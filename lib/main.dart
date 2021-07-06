import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color bgColor}) {
    return Expanded(
      //  expanded makes all item occupy a screen height symmetrically by column wise
      child: TextButton(
          style:
              ButtonStyle(backgroundColor: MaterialStateProperty.all(bgColor)),
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text('Click here')),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.stretch, // gives full width
              children: <Widget>[
                buildKey(soundNumber: 1, bgColor: Colors.green),
                buildKey(soundNumber: 2, bgColor: Colors.black),
                buildKey(soundNumber: 3, bgColor: Colors.teal),
                buildKey(soundNumber: 4, bgColor: Colors.blue),
                buildKey(soundNumber: 5, bgColor: Colors.pink),
                buildKey(soundNumber: 6, bgColor: Colors.yellow),
                buildKey(soundNumber: 7, bgColor: Colors.red),
              ],
            ),
          ),
        ));
  }
}
