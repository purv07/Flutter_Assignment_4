import 'package:flutter/material.dart';

class Q7 extends StatefulWidget {
  const Q7({super.key});

  @override
  State<Q7> createState() => _Q7State();
}

class _Q7State extends State<Q7> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CounterText(counter: counter)),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
class CounterText extends StatelessWidget {
  final int counter;
  const CounterText({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Counter: $counter',
      style: const TextStyle(fontSize: 24),
    );
  }
}
