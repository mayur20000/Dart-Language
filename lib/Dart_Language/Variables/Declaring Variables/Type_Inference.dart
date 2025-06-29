/*
var (Type Inference):
This is the most common way to declare variables in Dart
when you want Dart to automatically figure out the type based on the initial value.
Once assigned, its type cannot change.
 */

void main(){
  var name = 'Alice'; // Dart infers 'name' is a String
  var age = 30; // Dart infers 'age' is a int
  var price = 20.00; // Dart infers 'price' is a double
  var isActive = true; // Dart infers 'isActive' is a bool

  print('Name: $name, Type: ${name.runtimeType}');
  print('age:$age, Type: ${name.runtimeType}');
  print('price: $price Type : ${price.runtimeType}');
  print('isActive: $isActive, Type: ${price.runtimeType}');

  // You cannot change the type after it's inferred:
  // name = 123; // This would cause a compile-time error!

}