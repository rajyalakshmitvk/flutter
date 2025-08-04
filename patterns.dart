import 'dart:io';

void main() {
  print('Enter a number');
  String? number = stdin.readLineSync();
  int? value = int.parse(number!);

  for (int i = 1; i <= value; i++) {
    for (int j = 1; j <= i; j++) {
     stdout.write('$i ');
    }
    print('');
  }
}