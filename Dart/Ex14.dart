int berg(int n) {
  return (n <= 3) ? 1 : berg(n - 1) + berg(n - 2) + berg(n - 3);
}

void main() {
  final double f = 20;
  for (int i = 1; i <= f; i++) {
    print(berg(i));
  }
}