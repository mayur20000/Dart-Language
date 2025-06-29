/*
length: Number of elements.

isEmpty, isNotEmpty: Check if the list is empty.

first, last: Get the first/last element.
 */

void main() {
  List<int> numbers = [10, 20, 30];
  print('Length: ${numbers.length}');     // 3
  print('Is empty? ${numbers.isEmpty}');  // false
  print('First element: ${numbers.first}'); // 10
  print('Last element: ${numbers.last}');   // 30
}