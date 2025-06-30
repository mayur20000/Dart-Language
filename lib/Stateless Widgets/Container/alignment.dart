/*
Type: AlignmentGeometry? (e.g., Alignment.center, Alignment.topLeft)

Description: Aligns the child within the Container. If the Container is larger than its child, this property determines where the child is placed.

Alignment.topLeft: Top-left corner

Alignment.topCenter: Top-middle

Alignment.topRight: Top-right corner

Alignment.centerLeft: Middle-left

Alignment.center: Center (default if no alignment specified and container has no fixed size)

Alignment.centerRight: Middle-right

Alignment.bottomLeft: Bottom-left

Alignment.bottomCenter: Bottom-middle

Alignment.bottomRight: Bottom-right
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Container Alignment')),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          alignment: Alignment.bottomLeft,
          color: Colors.black,
          child: Container(
            width: 30,
            height: 50,
            color: Colors.white,
            child: Icon(Icons.star, color: Colors.yellow),

          ),
        ),
      ),
    ),
  ));
}