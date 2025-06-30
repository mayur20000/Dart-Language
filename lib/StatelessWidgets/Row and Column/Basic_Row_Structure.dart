/*
Flutter's Row and Column Widgets: Linear Layout Powerhouses
Row and Column are fundamental widgets in Flutter used to arrange multiple child widgets in a single, linear direction.

A Row widget lays out its children horizontally.

A Column widget lays out its children vertically.

They are both subclasses of Flex, which is a lower-level widget that provides the
core logic for flexible layouts. Understanding Row and Column means understanding
how to control the size and position of multiple widgets relative to each other along an axis.
 */

import 'package:flutter/material.dart';

void main(){
  MaterialApp(
    home: Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(80.0),
      child: AppBar(
        title: Text('Basic Row and Column Structure'),
        backgroundColor: Colors.deepPurple,
        ),
      ),
      body: Row(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.redAccent,
            child: Center(
              child: Text('1',style: TextStyle(color: Colors.black),),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purpleAccent,
            child: Center(
              child: Text('2',style: TextStyle(color: Colors.black),),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.greenAccent,
            child: Center(
              child: Text('3',style: TextStyle(color: Colors.black),),
            ),
          ),
        ],
      ),


    ),
  );

}

/*
Explanation:

We have a Scaffold providing the basic screen structure.

The body of the Scaffold contains a Row.

The Row's children property takes a List<Widget>.
 Here, we have three small Container widgets, each with a different color and a number inside.

By default, children in a Row will align to the start of the row and the top of the row.
 They will only take up the space they need.
 */