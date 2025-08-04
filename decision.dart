import 'dart:io';

void main()
{
  stdout.write('Enter a number');
  String? number = stdin.readLineSync();
  int? value = int.parse(number!);

  if(value == 0)
      print('$value is zero');
  else if(value % 2 == 0)
      print('$value is even');
  else
      print('$value is odd');

}