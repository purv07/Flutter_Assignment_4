import 'package:flutter/material.dart';

class Q6 extends StatefulWidget {
  @override
  _Q6State createState() => _Q6State();
}

class _Q6State extends State<Q6> {
  // List of boolean values for checkboxes
  List<bool> _isChecked = List.generate(20, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkbox List & Icon Grid')),
      body: Column(
        children: [
          // Scrollable List of 20 Checkboxes
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  title: Text('Item ${index + 1}'),
                  value: _isChecked[index],
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked[index] = value!;
                    });
                  },
                );
              },
            ),
          ),

          Divider(), // Separates List from Grid
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 columns
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 10,
              padding: EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.favorite, // Example icon
                    size: 40,
                    color: Colors.red,
                  ),
                  alignment: Alignment.center,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
