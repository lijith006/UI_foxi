int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

void main() {
  int n = 3;
  int result = factorial(n);
  print('The factorial of $n is $result');
}
