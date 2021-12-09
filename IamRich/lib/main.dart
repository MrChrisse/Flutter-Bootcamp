import 'package:flutter/material.dart';

//The main function is the starting point for all our Flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
          title: Text("I am Rich"),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    ),
  );
}
