/*
Map properties:

keys: Returns an Iterable of all keys.

values: Returns an Iterable of all values.

length: Number of key-value pairs.

isEmpty, isNotEmpty: Check if the map is empty.

containsKey(), containsValue(): Check for existence of key/value.
 */

void main() {
  Map<String, int> productPrices = {'Laptop': 1200, 'Mouse': 25, 'Keyboard': 75};
  print('Keys: ${productPrices.keys}');   // (Laptop, Mouse, Keyboard)
  print('Values: ${productPrices.values}'); // (1200, 25, 75)
  print('Length: ${productPrices.length}'); // 3
  print('Contains "Laptop" ${productPrices.containsKey('Laptop')}'); // true
  print('Contains value 50 ${productPrices.containsValue(50)}'); // false
}