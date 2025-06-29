/*
Using forEach():

Using for-in loop with entries:
 */

void main() {
  Map<String, String> countries = {
    'US': 'United States',
    'CA': 'Canada',
    'MX': 'Mexico'
  };

  // Using forEach()
  print('Using forEach:');
  countries.forEach((code, name) {
    print('$code: $name');
  });

  // Using for-in with entries
  print('\nUsing for-in with entries:');
  for (var entry in countries.entries) {
    print('Code: ${entry.key}, Name: ${entry.value}');
  }

  // Iterating only keys or values
  print('\nIterating keys:');
  for (String code in countries.keys) {
    print(code);
  }
  print('\nIterating values:');
  for (String name in countries.values) {
    print(name);
  }
}