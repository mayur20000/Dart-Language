/*
To solve this, we use Expanded or Flexible.

Expanded Widget
Type: A wrapper widget.

Description: A child of a Row or Column wrapped in Expanded will take up all available space along the main axis that's left over after non-expanded children have taken their space.

It forces its child to fill the available space.

It has a flex property (default 1) which dictates how much of the free space it gets relative to other Expanded widgets.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Row with Expanded')),
        body: Row(
          children: <Widget>[
            Container(color: Colors.red, width: 100, height: 50), // Fixed width
            Expanded( // This container will take remaining space
              flex: 2, // It will take 2 parts of available space
              child: Container(color: Colors.green, height: 50),
            ),
            Expanded( // This container will take remaining space
              flex: 1, // It will take 1 part of available space
              child: Container(color: Colors.blue, height: 50),
            ),
          ],
        ),
      ),
    ),
  );
}


/*
Explanation:

The red container takes its fixed 100px.

The remaining horizontal space is divided into 3 parts (flex 2 + flex 1).

The green container takes 2 parts, and the blue container takes 1 part.
 */