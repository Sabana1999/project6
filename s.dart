int gcd(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    return gcd(b, a % b);
  }
}

void main() {
  int num1 = 48;
  int num2 = 18;
  int result = gcd(num1, num2);
  print('GCD of $num1 and $num2 is $result');
}
