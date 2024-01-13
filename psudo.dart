int binary(List<int> arr, int low, int high, int key) {
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

main() {
  List<int> mylist = [10, 11, 12, 13, 45];
  int target = 3;
  int result = binary(mylist, 0, mylist.length - 1, target);
  if (result != -1) {
    print('result found at position $result ');
  } else {
    print('not found');
  }
}
