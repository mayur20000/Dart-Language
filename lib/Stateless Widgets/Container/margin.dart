/*
Description: Adds empty space outside the border of the container, separating it from other widgets.

 */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Container Margin')),
      body: Center(
        child: Column( // Column to show margin effect between two containers
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 20.0), // Margin at the bottom
              child: Center(child: Text('Top', style: TextStyle(color: Colors.white))),
            ),
            Container(
              color: Colors.purple,
              width: 100,
              height: 100,
              child: Center(child: Text('Bottom', style: TextStyle(color: Colors.white))),
            ),
          ],
        ),
      ),
    ),
  ));
}