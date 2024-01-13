import 'dart:io';

int binarySearch(List<int> arr, int low, int high, int key) {
  while (low <= high) {
    int mid = (low + high) ~/ 2;
    if (arr[mid] == key) {
      return mid;
    }
    if (key > arr[mid]) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}

void main() {
  print('enter the size');
  int size = int.parse(stdin.readLineSync()!);
  List<int> number = [];
  print('enter the elements');
  for (int i = 0; i < size; i++) {
    int element = int.parse(stdin.readLineSync()!);
    number.add(element);
  }
  print('enter the element for search');
  int target = int.parse(stdin.readLineSync()!);
  int result = binarySearch(number, 0, number.length - 1, target);
  if (result != -1) {
    print('result found at $result');
  } else {
    print('not found');
  }
}
