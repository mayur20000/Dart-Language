/*
This is a common point of confusion.

color:

Type: Color?

Description: Sets a simple background color for the container.

Limitation: Cannot be used if decoration is also specified. If you need gradients, borders, shadows, etc., you must use decoration.

decoration:

Type: Decoration? (typically BoxDecoration)

Description: Provides a much richer set of visual effects for the container's background and border.

Important: If you use decoration, you cannot use the color property directly on the Container.
 Instead, set the color inside the BoxDecoration.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Container Decoration')),
      body: Center(
        child: Container(
          width: 250,
          height: 150,
          // color: Colors.blue, // ERROR: Cannot be used with 'decoration'
          decoration: BoxDecoration(
            color: Colors.blueAccent, // Color goes inside BoxDecoration
            borderRadius: BorderRadius.circular(15.0), // Rounded corners
            border: Border.all(
              color: Colors.deepPurple,
              width: 3.0,
            ),
            boxShadow: [ // Add a shadow
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            gradient: LinearGradient( // Add a gradient background
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text(
              'Decorated Container!',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ),
  ));
}