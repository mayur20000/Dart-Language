/*
 This is the super-type for both int and double. A num variable can hold either an integer or a double.
 */

void main() {
  num anyNumber = 10;      // Can be int
  print('Any number: $anyNumber, Type: ${anyNumber.runtimeType}');

  anyNumber = 15.5;    // Can be double
  print('Any number: $anyNumber, Type: ${anyNumber.runtimeType}');
}