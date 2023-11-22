import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056C5C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Тапшырма 4',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Mustafa Nabiev',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 2,
              indent: 70,
              endIndent: 70,
            ),
            const SizedBox(height: 14),
            Container(
              color: Colors.white,
              height: 50,
              child: const Row(
                children: [
                  SizedBox(width: 30),
                  Icon(
                    Icons.phone_outlined,
                    size: 28,
                    color: Color(0xff056C5C),
                  ),
                  SizedBox(width: 30),
                  Text(
                    '+996 500 001 122',
                    style: TextStyle(
                      color: Color(0xff056C5C),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              height: 50,
              child: const Row(
                children: [
                  SizedBox(width: 30),
                  Icon(
                    Icons.email_outlined,
                    size: 28,
                    color: Color(0xff056C5C),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'nabievmustafa@gmail.com',
                    style: TextStyle(
                      color: Color(0xff056C5C),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
