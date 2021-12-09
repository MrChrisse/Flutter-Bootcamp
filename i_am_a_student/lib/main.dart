import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Am A Student'),
          leading: const Image(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/0/01/DHBW_MA_Logo.jpg'),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage('images/DHBW_MA_Logo.jpg'),
              ),
              Text('DHBW Student'),
            ],
          ),
        ),
      ),
    ),
  );
}
