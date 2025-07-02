/*
GridView.count(): A convenient shortcut constructor that creates a grid
 with a fixed number of tiles in the cross axis
 (using SliverGridDelegateWithFixedCrossAxisCount internally).
 This is often the easiest to start with.
 */

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
        ),
        body: GridView.count(
            crossAxisCount: 3,
            padding: const EdgeInsets.all(10.0),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: List.generate(15, (index){
              return Container(
                color: Colors.black,
                width: 50,
                height: 50,
                child: Center(
                  child: Text('Item ${index + 1}', style: TextStyle(color: Colors.white, fontSize: 2),
                  ),
                ),
              );
            }
          ),
        ),
      ),
    ),
  );
}