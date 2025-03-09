import 'dart:ffi';

import 'package:flutter/material.dart';

class Q5 extends StatefulWidget {
  const Q5({super.key});

  @override
  State<Q5> createState() => _Q5State();
}

class _Q5State extends State<Q5> {
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          Text('Select Age :-',style:TextStyle(fontSize: 25) ,),
          Slider(
            label: 'Select Age',
            value: age.toDouble(),
            onChanged: (value) {
              setState(() {
                age = value.toInt();
              });
            },
            min: 0,
            max: 100,
          ),
          Text('Age : $age'),
        ],

      ),
    );
  }
}
