import 'dart:io';

void main() {
  stdout.write('Enter a number');
  String? number = stdin.readLineSync();
  int? value = int.parse(number!);

  int reverse = 0, temp = value;
  while(temp != 0)
    {
      int digit = temp % 10;
      reverse = reverse * 10 + digit;
      temp = temp ~/ 10;
    }
    print('Reverse of $value is equal to $reverse');

  if(value == reverse)
    {
      print('$value is a palindrome');
    }
  else
    {
      print('$value is not a palindrome');
    }
}