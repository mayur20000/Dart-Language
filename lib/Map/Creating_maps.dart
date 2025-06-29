/*
Map (Key-value pairs / Dictionaries): An unordered collection where each value is associated with a unique key. Keys must be unique, values can be duplicated.

Creating maps:

{key: value}: Literal syntax.

Map<KeyType, ValueType>(): Explicitly type the map.
 */


void main(){
  Map<String, int> ages = {
    'Alice' : 30,
    'Bob': 20,
    'Jim':45,
  };

  print('ages map : $ages');

  Map<int, String> users = {
    101: 'Mayur',
    102: 'Mayur',
    103: 'Mayur',
  };
  print('users: $users');

  Map<String, dynamic> person = {
    'name': 'Frank',
    'age': 40,
    'isStudent': false,
  };
  print('Person map: $person');
}