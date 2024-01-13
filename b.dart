import 'dart:io';

int BinarySearch(List<int> arr, int low, int high, int key) {
  while (low <= high) {
    int mid = (low + high) ~/ 2;
    if (arr[mid] == key) {
      return mid;
    }
    if (key > arr[mid]) {
      low = mid + 1;
    } else {
      mid = mid - 1;
    }
  }
  return -1;
}

void main() {
  print('enter the size');
  int size = int.parse(stdin.readLineSync()!);
  List<int> no = [];
  print('enter the elements');
  for (int i = 0; i < size; i++) {
    int elements = int.parse(stdin.readLineSync()!);
    no.add(elements);
  }
  print('search element');
  int target = int.parse(stdin.readLineSync()!);
  int result = BinarySearch(no, 0, no.length - 1, target);
  if (result != -1) {
    print('element found at $result position');
  } else {
    print('result not found');
  }
}
