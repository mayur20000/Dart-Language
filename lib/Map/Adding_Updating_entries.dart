/*
Adding/Updating entries:

Assign a value to a new key to add.

Assign a value to an existing key to update.
 */

void main() {
  Map<String, int> scores = {'Math': 90, 'Science': 85};
  print('Initial scores: $scores');

  scores['English'] = 92; // Add a new entry
  print('After adding English: $scores'); // {Math: 90, Science: 85, English: 92}

  scores['Math'] = 95; // Update an existing entry
  print('After updating Math: $scores'); // {Math: 95, Science: 85, English: 92}
}