/*
width and height
Type: double?

Description: Specifies the explicit width and height of the container in logical pixels.

If not specified, a Container tries to be as large as possible if its parent provides unbounded constraints (e.g., Center, Column in a Row).

If it has a child but no explicit dimensions, it tries to shrink-wrap its child.

If it has no child and no explicit dimensions, it tries to be as large as possible.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Container Basics')),
        body: Center(
          child: Container(
            // Basic Container with a child
            color: Colors.blue, // A simple background color
            width: 200,         // Fixed width
            height: 100,        // Fixed height
            child: Text(
              'Hello Container!',
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center, // Align text within its own space
            ),
          ),
        ),
      ),
    ),
  );
}