bool powerofTwo(int n) {
  if (n < 1) {
    return false;
  }
  return n & n - 1 == 0;
}

void main() {
  int n = 4;
  print(powerofTwo(n));
}
