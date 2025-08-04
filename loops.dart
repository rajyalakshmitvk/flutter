import 'dart:io';

void main() {
  stdout.write('Enter a number');
  String? number = stdin.readLineSync();
  int? value = int.parse(number!);

  for (int i = 1; i <= value; i++) {
    print('$i * $value = ${i * value}');
  }
}