/*
Common String Methods: Strings in Dart are immutable (cannot be changed after creation). Methods return new strings.

* length: Returns the number of characters.
* isEmpty: Returns true if the string is empty.
* isNotEmpty: Returns true if the string is not empty.
* toUpperCase(): Returns a new string with all characters converted to uppercase.
* toLowerCase(): Returns a new string with all characters converted to lowercase.
* contains(substring): Returns true if the string contains the given substring.
* substring(startIndex, [endIndex]): Extracts a portion of the string.
* trim(): Removes leading and trailing whitespace.
* startsWith(pattern), endsWith(pattern): Checks if a string starts/ends with a given pattern.
* replaceFirst(), replaceAll(): Replaces occurrences of a substring.

 */


void main() {
  String message = '  Hello Dart World!  ';

  print('Length: ${message.length}'); // 21
  print('Is empty? ${message.isEmpty}'); // false
  print('Uppercase: ${message.toUpperCase()}'); //   HELLO DART WORLD!
  print('Lowercase: ${message.toLowerCase()}'); //   hello dart world!
  print('Contains "Dart": ${message.contains('Dart')}'); // true
  print('Substring (6 to 10): "${message.substring(6, 10)}"'); // Dart
  print('Trimmed: "${message.trim()}"'); // "Hello Dart World!"
  print('Starts with "  He": ${message.startsWith('  He')}'); // true
  print('Replaced: ${message.replaceAll('Dart', 'Flutter')}'); //   Hello Flutter World!
}