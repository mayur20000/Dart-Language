/*
Type: StackFit enum

Description: How the non-positioned children of the Stack should be sized.

StackFit.loose (Default): The non-positioned children
are free to be as large as their intrinsic size allows,
 up to the limits of the Stack itself.

StackFit.expand: The non-positioned children will be forced
to fill the entire space of the Stack. This is powerful when you want a
 background image or color to perfectly cover the stack area.
 */

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: PreferredSize(preferredSize: Size.fromHeight(80.0),
            child: AppBar(
              title: Text('StackFit'),
              backgroundColor: Colors.greenAccent,
            ),
          ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.black,
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: <Widget>[
                Image.network('https://tse4.mm.bing.net/th/id/OIP.Dq3YPnyaU0Xw59OatTyA3wAAAA?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
                  fit: BoxFit.cover,
                ),
                Text(
                  'Overlay Text',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [Shadow(blurRadius: 5, color: Colors.black)],
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
Explanation: The Image.network widget,
 even though it's implicitly sized by its content,
  is forced to expand and fill the entire 300x300
  Stack area because of StackFit.expand.
  The text is then centered on top of this expanded image.
 */