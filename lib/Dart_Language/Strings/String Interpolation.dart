
/// String Interpolation ($variable, ${expression}): A powerful way to embed variables or expressions directly within a string.
/// This is much cleaner than concatenation.

/// $variable: For a single variable.

/// ${expression}: For an expression (e.g., calculations, method calls).

void main() {
  String name = 'Alice';
  int age = 25;
  double price = 10.50;

  print('My name is $name and I am $age years old.');
  print('The total cost is \$${price * 1.05}.'); // Calculate and embed
  print('Is name empty? ${name.isEmpty}'); // Call a method and embed

}