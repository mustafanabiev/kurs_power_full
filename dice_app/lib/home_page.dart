import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int kubikSolJak = 6;
  int kubikOnJak = 1;

  void tashta() {
    setState(() {
      kubikSolJak = Random().nextInt(7);
      kubikOnJak = Random().nextInt(7);
      if (kubikSolJak == 0) {
        kubikSolJak = 1;
      }
      if (kubikOnJak == 0) {
        kubikOnJak = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        title: const Text(
          'Тапшырма 5',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: InkWell(
            onTap: tashta,
            child: Row(
              children: [
                Expanded(
                  child: Image.asset('assets/dice$kubikSolJak.png'),
                ),
                const SizedBox(width: 25),
                Expanded(
                  child: Image.asset('assets/dice$kubikOnJak.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
