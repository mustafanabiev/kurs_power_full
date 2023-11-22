import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff000000).withOpacity(0.78),
        title: const Text(
          'Flutter hylophone',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/note1.wav'));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: const Color(0xffEF443A),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/note2.wav'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xffF99700),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/note3.wav'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xffFFE93B),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/note4.wav'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xff4CB050),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/note5.wav'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xff2E968C),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/note6.wav'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xff2996F5),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                AudioPlayer().play(AssetSource('notes/note7.wav'));
              },
              child: Container(
                width: double.infinity,
                color: const Color(0xff9B28B1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
