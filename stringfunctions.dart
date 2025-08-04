void main() {
  String original = "  Hi dude welcome to Dart Programming!  ";

  // Basic properties
  print("Original: '$original'");
  print("Length: ${original.length}");
  print("Is Empty: ${original.isEmpty}");
  print("Is Not Empty: ${original.isNotEmpty}");

  // Trim functions
  print("Trim: '${original.trim()}'");
  print("Trim Left: '${original.trimLeft()}'");
  print("Trim Right: '${original.trimRight()}'");

  // Changing case
  print("To Upper Case: ${original.toUpperCase()}");
  print("To Lower Case: ${original.toLowerCase()}");

  // Accessing characters
  print("Character at index 6: ${original[6]}");
  print("Code unit at index 6: ${original.codeUnitAt(6)}");

  // Substring
  print("Substring (7 to 11): '${original.substring(7, 11)}'");

  // Contains and starts/ends with
  print("Contains 'Dart': ${original.contains("Dart")}");
  print("Starts with 'Hello': ${original.trim().startsWith("Hello")}");
  print("Ends with '!': ${original.trim().endsWith("!")}");

  // Replace
  print("Replace 'Dart' with 'Flutter': ${original.replaceAll('Dart', 'Flutter')}");

  // Split
  List<String> words = original.trim().split(" ");
  print("Split by space: $words");

  // Join
  String joined = words.join("-");
  print("Joined with '-': $joined");

  // Compare strings
  String a = "apple";
  String b = "banana";
  print("Compare 'apple' to 'banana': ${a.compareTo(b)}");

  // String interpolation
  int year = 2025;
  print("Interpolation: Dart in $year!");

  // Padding
  String padded = a.padLeft(10, '*');
  print("Pad Left: '$padded'");
  padded = a.padRight(10, '-');
  print("Pad Right: '$padded'");

  // ReplaceFirst & ReplaceRange
  print("Replace first 'l': ${original.replaceFirst('l', '*')}");
  print("Replace range (2–7): ${original.replaceRange(2, 7, '***')}");

  // Remove specific pattern using RegExp
  String noVowels = original.replaceAll(RegExp(r'[aeiouAEIOU]'), '');
  print("Without vowels: $noVowels");

  // Runes and Unicode
  print("Runes: ${original.runes}");
  print("Characters using Runes:");
  original.runes.forEach((int rune) {
    var character = String.fromCharCode(rune);
    print(character);
  });

  // toString
  int num = 42;
  print("Number to string: ${num.toString()}");

  // Format string using sprintf-like functionality (manually)
  double pi = 3.14159;
  print("Formatted string: ${pi.toStringAsFixed(2)}"); // 2 decimal places
}
