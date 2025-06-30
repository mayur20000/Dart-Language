/*
padding
Type: EdgeInsetsGeometry? (e.g., EdgeInsets.all(16.0), EdgeInsets.symmetric(horizontal: 10.0))

Description: Adds empty space inside the border of the container, between the border and the child.

Common EdgeInsets constructors:

EdgeInsets.all(double value): Applies the same padding on all sides.

EdgeInsets.only({left, top, right, bottom}): Applies padding to specific sides.

EdgeInsets.symmetric({vertical, horizontal}): Applies padding equally to vertical or horizontal sides.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Container Padding')),
      body: Center(
        child: Container(
          color: Colors.orange,
          // Add padding of 20 pixels on all sides
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Padded Text inside Container',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    ),
  ));
}