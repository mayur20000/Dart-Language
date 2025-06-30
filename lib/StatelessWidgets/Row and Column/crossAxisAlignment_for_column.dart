import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Column Cross Axis Alignment')),
        body: Container(
          color: Colors.grey[200],
          width: 200, // Column's width is its cross axis
          height: double.infinity, // Ensures Column takes full height for main axis
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch children horizontally
            children: <Widget>[
              // Note: For stretch to work, children usually need to be unconstrained
              // or have their width set to double.infinity if inside a Column.
              // Here, containers have specific widths, but stretch will override.
              Container(color: Colors.red, height: 60), // Width will stretch
              Container(color: Colors.green, height: 60),
              Container(color: Colors.blue, height: 60),
            ],
          ),
        ),
      ),
    ),
  );
}