// Externalizing logic through function references

// arrow functions

import 'dart:io';
void main() {

  //reading elements
  print('Enter number of elements');
  String? numEle = stdin.readLineSync();
  int? n = int.parse(numEle!);
  int i=0;
  List<int> data = [];
  print('Enter elements');
  while(i<n) {
    String? ele = stdin.readLineSync();
    data.add(int.parse(ele!));
    i = i+1;
  }

  // ascending order sort
  sort(data, (x, y) => x - y);
  print(data);

  // descending order sort
  sort(data, (x, y) => -(x - y));
  print(data);
}

void sort(List<int> data, int Function(int, int) compare) {
  int n = data.length;
  int temp;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (compare(data[j], data[j + 1]) > 0) {
        temp = data[j];
        data[j] = data[j + 1];
        data[j + 1] = temp;
      }
    }
  }
}