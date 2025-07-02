/*
overflow (Deprecated, use clipBehavior)
Type: Overflow enum (now Clip)

Description: How children that extend beyond the Stack's bounds are handled.

Overflow.clip (Deprecated): Clips children that overflow (doesn't show them).

Overflow.visible (Deprecated): Allows children to paint outside the Stack's bounds.

Note on overflow: This property has been deprecated in favor of clipBehavior.

5. clipBehavior (Replacement for overflow)
Type: Clip enum

Description: Determines how the content of the Stack should be clipped.

Clip.none (Default): No clipping. Children can overflow and be visible outside the Stack's bounds.

Clip.hardEdge: Clips content that overflows, without anti-aliasing.

Clip.antiAlias: Clips content that overflows, with anti-aliasing (smoother edges).

Clip.antiAliasWithSaveLayer: Similar to antiAlias but creates a new layer for clipping, potentially better performance for complex shapes.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stack Clip Behavior')),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.cyan[100],
            child: Stack(
              clipBehavior: Clip.hardEdge, // Try Clip.none to see overflow
              children: <Widget>[
                // This container will overflow the 200x200 stack
                Container(
                  width: 250,
                  height: 250,
                  color: Colors.cyan.withOpacity(0.5),
                  child: const Center(
                    child: Text(
                      'Overflowing',
                      style: TextStyle(color: Colors.white),
                    ),
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

