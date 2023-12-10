import 'package:flutter/material.dart';

class Calc extends StatelessWidget {
  const Calc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(children: [
          Text(
            'YOUR RESULT',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            '50.0',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ]),
      ),
    );
  }
}
