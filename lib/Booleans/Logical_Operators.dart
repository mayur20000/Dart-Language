/*
&& (AND): Both conditions must be true.

|| (OR): At least one condition must be true.

! (NOT): Reverses the boolean value.
 */

void main() {
  bool isLoggedIn = true;
  bool hasPermission = false;

  print('Is logged in: $isLoggedIn');
  print('Has permission: $hasPermission');

  print('Logged in AND has permission: ${isLoggedIn && hasPermission}'); // false
  print('Logged in OR has permission: ${isLoggedIn || hasPermission}');  // true
  print('NOT logged in: ${!isLoggedIn}'); // false

  int age = 18;
  bool canVote = age >= 18;
  print('Can vote: $canVote'); // true
}