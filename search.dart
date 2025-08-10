// Externalizing logic through function references

// arrow functions
import 'dart:io';

void main() {
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
  print('Enter search element');
  var search = stdin.readLineSync();
  int? searchEle = int.parse(search!);

  bool Function(int, int) eqComparison = (x, y) => x == y;
  bool Function(int, int) neqComparison = (x, y) => x != y;

  if (linearSearch(data, searchEle, eqComparison) == true) {
    print('found an element in the list which is equal to given searchEle');
  } else {
    print(
      'did not find an element in the list which is equal to given searchEle',
    );
  }

  if (linearSearch(data, searchEle, neqComparison) == true) {
    print(
      'found an element in the list which is not equal to given search ele',
    );
  } else {
    print(
      'did not find an element in the list which is not equal to given search ele',
    );
  }
}

bool linearSearch(List<int> list, int searchEle, bool Function(int, int) cmp) {
  for (var ele in list) {
    if (cmp(ele, searchEle) == true) {
      return true;
    }
  }
  return false;
}