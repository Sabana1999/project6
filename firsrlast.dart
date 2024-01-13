void main() {
  
}
int binarySearch(List<int> arr, int low, int high, int key) {
  int mid;
  while (low <= high) {
    mid = (low + high) ~/ 2;
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
