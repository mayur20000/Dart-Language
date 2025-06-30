import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Column Main Axis Alignment')),
        body: Container(
          color: Colors.grey[200],
          width: 100, // Giving some width to better visualize crossAxisAlignment later
          // A Column will try to take up all available vertical space by default.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // Try changing this!
            children: <Widget>[
              Container(color: Colors.red, width: 60, height: 60),
              Container(color: Colors.green, width: 60, height: 60),
              Container(color: Colors.blue, width: 60, height: 60),
            ],
          ),
        ),
      ),
    ),
  );
}