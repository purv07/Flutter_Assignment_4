import 'package:flutter/material.dart';

class Q2 extends StatefulWidget {
  const Q2({super.key});

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {
  bool? value = false;

  final Map<String,bool> players={
    'Dhoni':false,
    'Kohli':false,
    'Rohit':false,
    'Sachin':false,
    'Gill':false,
    'Jethalal':false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text('Select Player for PSL',textAlign: TextAlign.center,style: TextStyle(fontSize: 22),),
            Expanded(
              child: ListView(children: players.keys.map((player){
               return CheckboxListTile(
               title: Text(player),
               value: players[player], 
               onChanged: (bool? newValue){
                 setState(() {
                   players[player]=newValue ?? false;
                 });
               });
              }).toList(),),
            ),
            Expanded(child:
            Text(' \n ${_getSelectedPlayers()}'),
            ),
          ],
        ),
      ),
    );
  }
  String _getSelectedPlayers() {
    return players.keys.map((player) => players[player]! ? player : '').where((name) => name.isNotEmpty).join(', ') ;
  }

}


