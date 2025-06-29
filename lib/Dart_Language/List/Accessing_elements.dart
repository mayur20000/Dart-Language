/*
Accessing elements (index-based): Lists are zero-indexed, meaning the first element is at index 0.
 */

void main() {
  List<String> colors = ['Red', 'Green', 'Blue'];
  print('First color: ${colors[0]}');  // Red
  print('Second color: ${colors[1]}'); // Green
  print('Third Color: ${colors[2]}');
  // print(colors[3]); // Error: RangeError (index out of range)
}