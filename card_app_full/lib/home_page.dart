import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.name,
    required this.kesibi,
    required this.phone,
    required this.email,
  });

  final String name;
  final String kesibi;
  final String phone;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056C5C),
      appBar: AppBar(
        foregroundColor: Colors.black,
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
            Text(
              name,
              style: const TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '$kesibi Developer',
              style: const TextStyle(
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
              child: Row(
                children: [
                  const SizedBox(width: 30),
                  const Icon(
                    Icons.phone_outlined,
                    size: 28,
                    color: Color(0xff056C5C),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    '+996 $phone',
                    style: const TextStyle(
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
              child: Row(
                children: [
                  const SizedBox(width: 30),
                  const Icon(
                    Icons.email_outlined,
                    size: 28,
                    color: Color(0xff056C5C),
                  ),
                  const SizedBox(width: 30),
                  Text(
                    email,
                    style: const TextStyle(
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
