import 'package:flutter/material.dart';

class Q6 extends StatefulWidget {
  const Q6({super.key});

  @override
  State<Q6> createState() => _Q6State();
}

class _Q6State extends State<Q6> {
  final Map<String, bool> players = {
    'MS Dhoni': false,
    'Virat Kohli': false,
    'Rohit Sharma': false,
    'Sachin Tendulkar': false,
    'Shubman Gill': false,
    'Jasprit Bumrah': false,
    'Ravindra Jadeja': false,
    'KL Rahul': false,
    'Suryakumar Yadav': false,
    'Yuzvendra Chahal': false,
    'Hardik Pandya': false,
    'Rishabh Pant': false,
    'Shreyas Iyer': false,
    'Mohammed Shami': false,
    'Bhuvneshwar Kumar': false,
    'Axar Patel': false,
    'Kuldeep Yadav': false,
    'Ishan Kishan': false,
    'Prithvi Shaw': false,
    'Washington Sundar': false,
  };

  final List<IconData> icons = [
    Icons.home,
    Icons.star,
    Icons.person,
    Icons.settings,
    Icons.camera,
    Icons.phone,
    Icons.email,
    Icons.map,
    Icons.lock,
    Icons.shopping_cart,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dynamic List & Grid")),
      body: Column(
        children: [
          // Scrollable ListView with checkboxes
          Expanded(
            child: ListView.builder(
              itemCount: players.length,
              itemBuilder: (context, index) {
                String player = players.keys.elementAt(index);
                return CheckboxListTile(
                  title: Text(player),
                  value: players[player],
                  onChanged: (bool? newValue) {
                    setState(() {
                      players[player] = newValue ?? false;
                    });
                  },
                );
              },
            ),
          ),

          const Divider(),

          // Dynamic Grid with 3 columns displaying 10 icons
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(), // Prevents grid scrolling
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 columns

              ),
              itemCount: icons.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Icon(icons[index], size: 20, color: Colors.blue),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
