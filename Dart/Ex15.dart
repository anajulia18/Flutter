
int def(int v, int i) {
  return v == 1 ? 2 : def(v - 1, i - 2) + i;
}

void main() {
  final double n = 10;
  if (n < 0 || n > 100) {
    print('Valor invalido.');
    print('Digite novamente.');
    main();
  }
  int j = 1;
  for (int i = 1; i <= 10; i++) {
    print(def(i, j));
    j += 2;
  }
}