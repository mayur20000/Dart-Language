import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Container Basic Structure')),
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                  'Heelo Dart',
                style: TextStyle(color: Colors.black, fontSize: 20),
                textAlign: TextAlign.center,


              ),
            ),
          ),
        ),
      ),
    )
  );
}