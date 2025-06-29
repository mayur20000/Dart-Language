void main() {
  Map<String, String> capitals = {
    'USA': 'Washington D.C.',
    'India': 'New Delhi',
    'France': 'Paris'
  };
  print('Capital of India: ${capitals['India']}'); // New Delhi
  print('Capital of Japan: ${capitals['Japan']}'); // null (key not found)
}