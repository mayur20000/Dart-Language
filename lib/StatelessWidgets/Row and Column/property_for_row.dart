import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Row Main Axis Alignment')),
        body: Container(
          color: Colors.grey[200],
          // A Row will try to take up all available horizontal space by default.
          // The height will wrap its content, unless constrained.
          height: 100, // Giving some height to better visualize crossAxisAlignment later
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Try changing this!
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


/*
Row and Column Properties (Detailed Explanation)
Both Row and Column share a common set of properties for controlling their children's layout. The key difference is the "main axis" and "cross axis" orientation.

For Row:

Main Axis: Horizontal (left to right, or right to left for RTL languages).

Cross Axis: Vertical (top to bottom).

For Column:

Main Axis: Vertical (top to bottom).

Cross Axis: Horizontal (left to right).

1. children (Required)
Type: List<Widget>

Description: The list of widgets that the Row or Column will arrange.

Example (shown in basic structures above).

2. mainAxisAlignment
Type: MainAxisAlignment enum

Description: How children are distributed along the main axis of the Row or Column when there is free space.

MainAxisAlignment.start (Default): Place children at the beginning of the main axis.

MainAxisAlignment.end: Place children at the end of the main axis.

MainAxisAlignment.center: Place children in the middle of the main axis.

MainAxisAlignment.spaceBetween: Place the free space between children.
 The first child is at the start, the last child is at the end.

MainAxisAlignment.spaceAround: Place the free space around children.
 Space is equally distributed, but half of it is at the ends.

MainAxisAlignment.spaceEvenly: Place the free space evenly between and around children.
All gaps (including ends) are equal.
 */