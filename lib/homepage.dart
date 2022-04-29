import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Xylophone',
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            button(Colors.yellow, 1),
            button(Colors.black, 2),
            button(Colors.amberAccent, 3),
            button(Colors.greenAccent, 4),
            button(Colors.deepOrange, 5),
            button(Colors.lime, 6),
            button(Colors.deepPurpleAccent, 7),
          ]),
    );
  }

  void playMusic(int notesNumber) {
    final player = AudioCache();
    player.play('note$notesNumber.wav');
  }

  Widget button(Color color, int number) {
    return Expanded(
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(primary: color),
        onPressed: () {
          playMusic(number);
        },
        icon: Icon(Icons.music_note),
        label: Text(''),
      ),
    );
  }
}
