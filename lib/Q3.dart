import 'package:flutter/material.dart';

class Q3 extends StatefulWidget {
  const Q3({super.key});

  @override
  State<Q3> createState() => _Q3State();
}

class _Q3State extends State<Q3> {
  String selected = 'Java';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RadioListTile(
              title: Text('Java'),
              value: 'Java',
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              }),
          RadioListTile(
              title: Text('C#'),
              value: 'C#',
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              }),
          RadioListTile(
              title: Text('C++'),
              value: 'C++',
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              }),
          RadioListTile(
              title: Text('Dart'),
              value: 'Dart',
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              }),
          Text('Select Course :- $selected'),

        ],

      ),

    );
  }
}
