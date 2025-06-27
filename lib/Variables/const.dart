/*const: The value of a const variable must be known at compile time. This means the value must be a literal or a combination of other const values. const implies final.

Use cases:

Mathematical constants (e.g., pi).
Configuration values that are fixed at the time the app is built.
Creating immutable collections (lists, maps) that won't change.
*/


void main(){
  const double PI = 3.14159; // Value known at compile time
  print('VALUE OF PI: $PI');

  // const String appName = DateTime.now().toString(); // Error: Not a constant expression
  // DateTime.now() is a runtime operation.


  const String appVersion = '1.0.0';
  print('App Version: $appVersion');

  const List<int> primeNumbers = [2, 3, 5, 7]; // A const list
  // primeNumbers.add(11); // Error: Cannot modify a const list.
  print('Prime Numbers: $primeNumbers');


}


