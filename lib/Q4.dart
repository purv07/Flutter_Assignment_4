import 'package:flutter/material.dart';

class Q4 extends StatefulWidget {
  const Q4({super.key});

  @override
  State<Q4> createState() => _Q4State();
}

class _Q4State extends State<Q4> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tab1', icon: Icon(Icons.tab)),
              Tab(text: 'Tab2', icon: Icon(Icons.tab)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ColoredBox(
              color: Colors.deepPurple,
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.asset('assets/images/flutter.jpg'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.asset('assets/images/flutter.jpg'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.asset('assets/images/flutter.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ColoredBox(
              color: Colors.orange,
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.asset('assets/images/flutter.jpg'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.asset('assets/images/flutter.jpg'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.asset('assets/images/flutter.jpg'),
                      ),
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
