
int def(int v, int i) {
  return v == 1 ? 2 : def(v - 1, i - 2) + i;
}

 void main() {
  final List<int> ns = List.generate(
      10, (int index) => (0));
  for (int i = ns.length - 1; i >= 0; i--) {
    print('Indice $i${ns[i]}');
  }
}