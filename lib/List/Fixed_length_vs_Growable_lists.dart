/*
Lists created with [] or List.from() are growable by default.

List.filled(size, value) creates a fixed-length list. You cannot add or remove elements from it.
 */

void main() {
  List<int> growableList = [1, 2];
  growableList.add(3); // Works
  print(growableList); // [1, 2, 3]

  List<int> fixedList = List.filled(2, 0); // [0, 0]
  // fixedList.add(1); // Error: Unsupported operation: Cannot add to a fixed-length list
  print(fixedList);
}