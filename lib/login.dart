import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController c1=new TextEditingController();
  TextEditingController c2=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30,
            children: [
              TextField(
                controller: c1,
                decoration: InputDecoration(
                  labelText: 'Enter Username',
                  hintText: 'Enter Username'
                ),
              ),
              TextField(
                controller: c2,
                decoration: InputDecoration(
                    labelText: 'Enter Password',
                    hintText: 'Enter Password',

                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text('Login Now')),
            ],
          ),
        ),
      ),
    );
  }
}
