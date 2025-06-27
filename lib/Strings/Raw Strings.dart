///Raw Strings (`r'...'`):** Useful when you want to treat backslashes `\`
///as literal characters, not as escape sequences.
/// Common for regular expressions or Windows file paths


void main() {
  print(r'This is a raw string. Newline \n will not be interpreted.');
  print('A regular string with a newline:\nNext line.');
  print(r'C:\Users\Documents\file.txt'); // No need for double backslashes
}