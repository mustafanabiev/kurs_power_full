import 'package:counter_app_full/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MeninTirkemem());
}

class MeninTirkemem extends StatelessWidget {
  const MeninTirkemem({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MeninTirkememdinBarkchasy(),
    );
  }
}

class MeninTirkememdinBarkchasy extends StatefulWidget {
  const MeninTirkememdinBarkchasy({Key? key}) : super(key: key);

  @override
  _MeninTirkememdinBarkchasyState createState() =>
      _MeninTirkememdinBarkchasyState();
}

class _MeninTirkememdinBarkchasyState extends State<MeninTirkememdinBarkchasy> {
  int san = 0;

  void koshuu() {
    setState(() {
      san++;
      // ++
      // 0÷1
      // 1+1
      // 2+1
    });
  }

  void kemituu() {
    setState(() {
      san--;
      // --
      // 0-1
      // 1-1
      // 2-1
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Тапшырма 01',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1) InkWell
            // 2) GestureDetector
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(count: san),
                  ),
                );
              },
              child: Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    'Сан: $san',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: kemituu,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0D61AE),
                    ),
                    child: const Icon(
                      Icons.remove,
                      size: 40,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      koshuu();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0D61AE),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
