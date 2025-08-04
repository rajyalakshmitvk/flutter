import 'dart:io';

void main() {
  // Print a welcome message
  print('Welcome to Dart Basics!');

  // Variables and data types
  int age = 25;
  double height = 5.9;
  String name = 'Alice';
  bool isStudent = true;

  // Printing variables
  print('Name: $name');
  print('Age: $age');
  print('Height: $height');
  print('Is student: $isStudent');

  // List (array)
  List<String> hobbies = ['Reading', 'Coding', 'Traveling'];
  print('Hobbies: $hobbies');

  // Function call
  greetUser(name);

  // Control flow: if-else
  if (age >= 18) {
    print('$name is an adult.');
  } else {
    print('$name is a minor.');
  }

  // Loop: for
  print('Listing hobbies:');
  for (int i = 0; i < hobbies.length; i++) {
    print('- ${hobbies[i]}');
  }

  // Taking user input
  stdout.write('Enter your favorite color: ');
  String? color = stdin.readLineSync();
  print('Your favorite color is $color.');
}

// A simple function
void greetUser(String username) {
  print('Hello, $username!');
}
