/*
Basic for loop: Using an index.

for-in loop: Iterating directly over elements.

forEach() method: A higher-order function that takes a callback.
 */

void main() {
  List<String> names = ['Alice', 'Bob', 'Charlie'];

  // Using a basic for loop
  print('Using for loop:');
  for (int i = 0; i < names.length; i++) {
    print('Name at index $i: ${names[i]}');
  }

  // Using a for-in loop (more concise)
  print('\nUsing for-in loop:');
  for (String name in names) {
    print('Hello, $name!');
  }

  // Using forEach()
  print('\nUsing forEach method:');
  names.forEach((greet) {
    print('Greetings, $greet!');
  });

  names.forEach((name){
    print('name, $name');
  });
}