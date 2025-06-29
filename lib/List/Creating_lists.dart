/*
[]: Literal syntax.

List.from(): Creates a new list from an existing iterable.

List.filled(): Creates a list with a fixed size and fills it with a value.

List<Type>[]: Explicitly type the list for better safety.
 */


void main() {
  List<int> numbers = [1, 2, 3, 4, 5]; // List of integers
  List<String> fruits = ['Apple', 'Banana', 'Cherry']; // List of strings
  List mixedList = [1, 'hello', true]; // List with mixed types (not recommended)>
  List<int> number = [1, 2, 3, 4, 5];


  print('Numbers: $numbers');
  print('Number: $number');
  print('Fruits: $fruits');
  print('Mixed List: $mixedList');

  List<int> moreNumbers = List.filled(3, 0); // Creates [0, 0, 0]
  print('More Numbers: $moreNumbers');
}