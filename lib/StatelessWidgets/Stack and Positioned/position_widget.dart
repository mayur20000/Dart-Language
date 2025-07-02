/*
Positioned Widget (Used Exclusively Within Stack)
The Positioned widget is a special type of widget that can only be a child of a Stack. It allows you to precisely control the location and size of its child within the Stack.

Key Properties of Positioned:

left, top, right, bottom (Type: double?): These properties specify the distance from the respective edge of the Stack to the edge of the Positioned child. You can provide any combination of these, but be careful not to over-constrain (e.g., providing both left and right also implies a width).

width, height (Type: double?): Explicitly sets the width or height of the Positioned child.

child (Type: Widget): The single widget to be positioned.

Important Positioning Rules:

Fixed position: Provide left and top (or right and bottom).

Stretch horizontally: Provide left and right (and optionally top/bottom).

Stretch vertically: Provide top and bottom (and optionally left/right).

Fill the stack: Provide left: 0, top: 0, right: 0, bottom: 0.
(Equivalent to using Positioned.fill()).

Explicit size: Provide width and height along with two opposing position properties
(e.g., left and top, or right and bottom).

Positioned.fill Constructor
A convenient constructor that automatically
 sets left: 0, top: 0, right: 0, bottom: 0, causing the child to fill the entire Stack.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stack with Positioned Widgets')),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.grey[300],
            child: Stack(
              children: <Widget>[
                // Background image (fills the stack)
                Positioned.fill(
                  child: Image.network(
                    'https://via.placeholder.com/300x300.png?text=Background',
                    fit: BoxFit.cover,
                  ),
                ),
                // Text at top-left
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.black.withOpacity(0.6),
                    child: Text(
                      'Top Left',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                // Text at bottom-right
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.black.withOpacity(0.6),
                    child: Text(
                      'Bottom Right',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                // Centered circular avatar
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Align( // Align is used to center within the Positioned bounds
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blueAccent,
                      child: Icon(Icons.person, size: 60, color: Colors.white),
                    ),
                  ),
                ),
                // Button at bottom-center, stretching horizontally
                Positioned(
                  bottom: 10,
                  left: 60, // Start 60 from left
                  right: 60, // End 60 from right
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Action Button'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}