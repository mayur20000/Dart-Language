void main(){

  String message;
  // Error: Non-nullable variable 'message' must be initialized.
  // print(message); // This line would cause an error if the above was uncommented.

  String greeting = 'Hello'; // Initialized at declaration
  print(greeting);

  int count;
  count = 5; // Initialized later
  print(count);

}

/*In Dart, non-nullable variables must be initialized before they are used.
If you declare a variable but don't assign a value, Dart will complain
(unless it's nullable, which we'll cover in Null Safety).
 */