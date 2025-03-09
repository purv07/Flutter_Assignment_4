import 'package:flutter/material.dart';

class Q1 extends StatelessWidget {
  const Q1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'Bharat 🇮🇳',
            style: TextStyle(fontFamily: 'Coffee', fontSize: 50),
          )),
          Center(
              child: Text(
            'Custom Fonts',
            style: TextStyle(fontSize: 20),
          )),
        ],
      ),
    );
  }
}
