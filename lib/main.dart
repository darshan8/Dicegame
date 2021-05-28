import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Dice Game',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int dicenumber = 1;

  changedice(){
    setState(() {
      dicenumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Game'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Center(child: Image.asset("assets/$dicenumber.png", height: 250, width: 250)),
          SizedBox(height: 50),
          MaterialButton(
            color: Colors.blue,
            onPressed: changedice,
            child: Text("Roll", style: TextStyle(color: Colors.white)),
          ),
            SizedBox(height: 70),
          Text("@FlutterwithDarshan", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      )
    );
  }
}
