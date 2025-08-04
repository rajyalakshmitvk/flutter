

import 'dart:io';
void main()
{
  // Taking user input
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();
  if(input!=null) {
    int? num = int.parse(input);
    int? fact = factorial(num);
    print('Factorial = $fact');
  }
}

int factorial(int num)
{
  if(num == 0)
    return 1;
  else
    return num * factorial(num - 1 );
}