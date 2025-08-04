import 'dart:io';
void main()
{
  // Taking user input
  stdout.write('Enter your favorite color: ');
  String? color = stdin.readLineSync();
  int? data = int.parse(color!);
  print('Your favorite color is $color.');
}
