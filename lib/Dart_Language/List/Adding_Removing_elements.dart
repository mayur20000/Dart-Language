/*
Adding/Removing elements:

add(element): Adds an element to the end.

addAll(iterable): Adds all elements from another iterable.

insert(index, element): Inserts an element at a specific index.

remove(element): Removes the first occurrence of an element.

removeAt(index): Removes the element at a specific index.

clear(): Removes all elements.
 */


void main() {
  List<String> shoppingList = ['Milk', 'Bread'];
  print('Initial list: $shoppingList');

  shoppingList.add('Eggs');
  print('After add: $shoppingList'); // [Milk, Bread, Eggs]

  shoppingList.addAll(['Cheese', 'Juice']);
  print('After addAll: $shoppingList'); // [Milk, Bread, Eggs, Cheese, Juice]

  shoppingList.insert(1, 'Butter'); // Insert at index 1
  print('After insert: $shoppingList'); // [Milk, Butter, Bread, Eggs, Cheese, Juice]

  shoppingList.remove('Bread');
  print('After remove "Bread": $shoppingList'); // [Milk, Butter, Eggs, Cheese, Juice]

  shoppingList.removeAt(0); // Remove "Milk"
  print('After removeAt(0): $shoppingList'); // [Butter, Eggs, Cheese, Juice]

  shoppingList.insert(3, 'Cream');
  print('added at index with elemenet name: $shoppingList');


  shoppingList.clear();
  print('After clear: $shoppingList'); // []
}