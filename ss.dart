int fibanacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibanacci(n - 1) + fibanacci(n + 2);
}
