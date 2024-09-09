import 'package:flutter/material.dart';

class ScrolingHorizantalPage extends StatefulWidget {
  const ScrolingHorizantalPage({super.key});

  @override
  State<ScrolingHorizantalPage> createState() => _ScrolingHorizantalPageState();
}

class _ScrolingHorizantalPageState extends State<ScrolingHorizantalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            test(Colors.black),
            test(Colors.grey),
            SizedBox(
              height: 200,
              width: 600,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  test(Colors.green),
                  test(Colors.black),
                  test(Colors.blue),
                ],
              ),
            ),
            test(Colors.yellow),
            test(Colors.black),
            test(Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget test(Color color) {
    return Container(
      width: 200,
      height: 200,
      color: color,
    );
  }
}
