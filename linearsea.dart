import 'dart:io';

int linearSearch(List<int> list, int target) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) {
      return i;
    }
  }
  return -1;
}

void main() {
  print('eneter the size');
  int size = int.parse(stdin.readLineSync()!);
  List<int> number = [];

  print('enter the elements');
  for (int i = 0; i < size; i++) {
    int element = int.parse(stdin.readLineSync()!);
    number.add(element);
  }
  print('enter the element for search');
  int target = int.parse(stdin.readLineSync()!);
  int result = linearSearch(number, target);
  if (result != -1) {
    print('element found at $result');
  } else {
    print('element not found');
  }
}
