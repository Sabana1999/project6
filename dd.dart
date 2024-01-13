void towerOfHanoi(int discs, String source, String auxiliary, String destination) {
  if (discs == 1) {
    print('Move disk 1 from $source to $destination');
    return;
  }


  towerOfHanoi(discs - 1, source, destination, auxiliary);
  print('Move disk $discs from $source to $destination');
  towerOfHanoi(discs - 1, auxiliary, source, destination);
}

void main() {
  int discs = 3; // Change the number of discs here
  towerOfHanoi(discs, 'A', 'B', 'C');
}
