/*These keywords are used for declaring variables whose values will not change after they are initialized. This makes your code safer and often more performant.

final: The value of a final variable is assigned once at runtime. This means you can assign its value based on a calculation or data received at runtime.

Use cases:
Data fetched from an API.
Calculated values based on user input.
An object that needs to be created only once (e.g., a database connection instance).

 */

void main(){
  final DateTime now = DateTime.now();  // Value assigned when the program runs
  print('current time: $now' );

  final String userName = 'John Doe'; // Assigned once, cannot be changed
  // userName = 'Jane Doe'; // Error: A final variable can only be set once.

  // Value can be calculated at runtime for final:
  final double calculatedArea = 3.14 * 5 * 5;
  print('Calculated Area: $calculatedArea');

}

