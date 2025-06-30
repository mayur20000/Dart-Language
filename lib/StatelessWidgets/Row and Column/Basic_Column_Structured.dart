import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Basic Column')),
        body: Column( // <-- Our Column widget
          children: <Widget>[ // <-- It takes a list of widgets as children
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
              child: Center(child: Text('A', style: TextStyle(color: Colors.white))),
            ),
            Container(
              color: Colors.green,
              width: 50,
              height: 50,
              child: Center(child: Text('B', style: TextStyle(color: Colors.white))),
            ),
            Container(
              color: Colors.blue,
              width: 50,
              height: 50,
              child: Center(child: Text('C', style: TextStyle(color: Colors.white))),
            ),
          ],
        ),
      ),
    ),
  );
}

/*
Explanation:

Similar to the Row example, but now the Container widgets are stacked vertically due to the Column widget.

By default, children in a Column will align to the start of the column and the left side of the column. They will only take up the space they need.


 */