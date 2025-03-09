import 'package:flutter/material.dart';

class Q8 extends StatefulWidget {
  const Q8({super.key});

  @override
  State<Q8> createState() => _Q8State();
}

class _Q8State extends State<Q8> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 24, color: Colors.blue),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
          ),
        ),
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hello, Themed Flutter!',
                    style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Press Me'),
                ),
              ],
            ),
          ),
        ));
  }
}
