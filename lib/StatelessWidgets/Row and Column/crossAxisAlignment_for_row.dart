import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Row Cross Axis Alignment')),
        body: Container(
          color: Colors.grey[200],
          height: 200, // Row's height is its cross axis
          width: double.infinity, // Ensures Row takes full width for main axis
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
            crossAxisAlignment: CrossAxisAlignment.end, // Align children to the bottom
            children: <Widget>[
              Container(color: Colors.red, width: 60, height: 60),
              Container(color: Colors.green, width: 60, height: 80), // Taller
              Container(color: Colors.blue, width: 60, height: 40),  // Shorter
            ],
          ),
        ),
      ),
    ),
  );
}