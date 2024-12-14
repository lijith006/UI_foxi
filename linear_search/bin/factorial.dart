void main() {
  int target = 3;
  int result = factorial(target);
  print(result);
}

factorial(int target) {
  if (target == 0 || target == 1) {
    return 1;
  }
  return target * factorial(target - 1);
}
