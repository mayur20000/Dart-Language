/*
Flexible Widget
Type: A wrapper widget.

Description: A child of a Row or Column wrapped in Flexible will allow its child to use available space along the main axis, but it does not force the child to fill it entirely.

It has a fit property (FlexFit.loose (default) or FlexFit.tight).

FlexFit.loose: The child can be smaller than the available space.

FlexFit.tight: The child is forced to fill the available space (similar to Expanded).

It also has a flex property.
 */
import 'package:flutter/material.dart';
void main(){
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Flexible Wdiget')),
      body: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 100,
            color: Colors.cyan,
            child: Text('static', style: TextStyle(color: Colors.black),),
          ),
          Flexible(
              flex: 1,
              child: Container(
              width: 200 ,
              height: 50,
              color: Colors.greenAccent,
              child: Text('Flexible', style: TextStyle(color: Colors.black),),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              color: Colors.amber,
              height: 50,
              child: Text('Tight Flixible', style: TextStyle(color: Colors.black),),
            ),
          ),
        ],
      ),
    ),
  );


}

