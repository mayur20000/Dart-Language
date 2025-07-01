/*
A Stack widget takes a List<Widget> as its children property.
Widgets in this list are rendered in the order they appear, from bottom to top.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack Widget'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            child: Stack(
              alignment: AlignmentDirectional.center, // Aligns all children to the center of the Stack
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  color: const Color.fromRGBO(108, 108, 108, 1.0),
                  child: const Center(
                    child: Text('Grey Bottom', style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: const Color.fromRGBO(63, 63, 63, 1.0),
                  child: const Center(
                    child: Text('Dark Grey Middle', style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  width: 70, // Slightly smaller to be visible
                  height: 70, // Slightly smaller to be visible
                  color: const Color.fromRGBO(17, 17, 17, 1.0),
                  child: const Center(
                    child: Text('Black Top', style: TextStyle(color: Colors.white)),
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

/*
xplanation:

We have a Scaffold and Center widget to place our main Stack in the middle of the screen.

The Stack itself is within a Container with a grey background, making its boundaries visible.

The Stack contains three Container children of different sizes and colors.

Notice that all three containers are aligned to the top-left corner by default.
 This is the Stack's default behavior for its non-positioned children.
 The Red container is fully visible, Green partially covers Red,
 and Blue partially covers Green.
 */


/// 1. children (Required)
/// Type: List<Widget>
///
/// Description: The list of widgets to be stacked. The first widget in the list is the bottom-most layer, and the last widget is the top-most layer.
///
///Example (shown in basic structure above).
///
/// 2. alignment
///Type: AlignmentGeometry (e.g., Alignment.center, Alignment.bottomRight)
///
///Description: This property controls how the non-positioned children of the Stack are aligned within the Stack's bounds. If you don't wrap a child in a Positioned widget, it will adhere to this alignment.
///
///Alignment.topLeft (Default)
///
///Alignment.center
///
///Alignment.bottomRight
///
///... and so on (all Alignment options work here).