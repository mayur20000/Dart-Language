/*
dynamic: This keyword allows a variable to hold any type of value,
 and its type can change at runtime. Use dynamic sparingly,
  as it bypasses Dart's type safety, making it harder to catch errors early.
   It's useful when you genuinely don't know the type of data beforehand
    (e.g., parsing JSON).
 */

void main(){
  dynamic myVariable = 10;
  print('Value: $myVariable, Type: ${myVariable.runtimeType}');

  myVariable = 'Hello';
  print('Value: $myVariable, Type: ${myVariable.runtimeType} ');

  myVariable = 'true';
  print('Value: $myVariable, Type: ${myVariable.runtimeType} ');




}