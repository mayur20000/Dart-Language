void main() {
  Map<String, String> contacts = {
    'Mom': '123-456-7890',
    'Dad': '987-654-3210'
  };
  print('Initial contacts: $contacts');

  contacts.remove('Dad');
  print('After removing Dad: $contacts'); // {Mom: 123-456-7890}
}