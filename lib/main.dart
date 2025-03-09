import 'package:flutter/material.dart';
import 'package:practicalassignment4/Q1.dart';
import 'package:practicalassignment4/Q10.dart';
import 'package:practicalassignment4/Q2.dart';
import 'package:practicalassignment4/Q3.dart';
import 'package:practicalassignment4/Q4.dart';
import 'package:practicalassignment4/Q5.dart';
import 'package:practicalassignment4/Q6.dart';
import 'package:practicalassignment4/Q7.dart';
import 'package:practicalassignment4/Q8.dart';
import 'package:practicalassignment4/greet.dart';
import 'package:practicalassignment4/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget? SelectedProgram;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Practical Assignment-4 🤘',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromRGBO(45, 45, 45, 1),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Color.fromRGBO(45, 45, 45, 1)),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Practical Assignment-2',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.white, fontSize: 35),
                        softWrap: true,
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 20,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                SelectedProgram=const Q1();
                              });
                              Navigator.pop(context);
                            }, child: Text('Program-1')),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                SelectedProgram=const Q2();
                              });
                              Navigator.pop(context);
                            }, child: Text('Program-2')),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                SelectedProgram=const Q3();
                              });
                              Navigator.pop(context);
                            }, child: Text('Program-3')),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                SelectedProgram=const Q4();
                              });
                              Navigator.pop(context);
                            }, child: Text('Program-4')),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                SelectedProgram=const Q5();
                              });
                              Navigator.pop(context);
                            },
                            child: Text('Program-5')),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                SelectedProgram=const Q6();
                              });
                              Navigator.pop(context);
                            },
                            child: Text('Program-6')),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                SelectedProgram=const Q7();
                              });
                              Navigator.pop(context);
                            },
                            child: Text('Program-7')),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                SelectedProgram=const Q8();
                              });
                              Navigator.pop(context);
                            },
                            child: Text('Program-8')),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                SelectedProgram=const login();
                              });
                              Navigator.pop(context);
                            },
                            child: Text('Login Program-9')),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                SelectedProgram=const greet();
                              });
                              Navigator.pop(context);
                            },
                            child: Text('Greet Program-9')),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Close Program-9')),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                SelectedProgram=Q10();
                              });
                              Navigator.pop(context);
                            },
                            child: Text('Program-10')),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: SelectedProgram??const Center(
        child: Text('👈 Select Program From Side Menu'),
      ),
    );
  }
}
