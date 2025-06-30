/*
Type: BoxConstraints?

Description: Imposes additional constraints on the child of the container. This is powerful for setting minimum/maximum dimensions.

BoxConstraints.tightFor(width: 100, height: 100): Exactly the specified size.

BoxConstraints.tight(Size(100, 100)): Same as above.

BoxConstraints.expand(): Tries to expand to fill all available space.

BoxConstraints(minWidth: 50, maxWidth: 200, minHeight: 50, maxHeight: 150): Sets ranges.
 */


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Container Constraints')),
      body: Center(
        child: Container(
          color: Colors.teal.shade100,
          // The child text will dictate the container's size,
          // but the container must be at least 150x150
          constraints: BoxConstraints(
            minWidth: 150,
            minHeight: 150,
          ),
          child: Text(
            'This text dictates size, but container is at least 150x150.',
            style: TextStyle(fontSize: 16),
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(border: Border.all(color: Colors.teal, width: 2)),
        ),
      ),
    ),
  ));
}