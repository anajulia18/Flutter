void main() {
  final double x =4;
  final double f = 6;
  if (f < x) {
    return print(
        'O intervalo é inferior ao valor que deverá ser multiplicado.');
  }
  for (int i = 1; i <= f; i++) {
    double j = x * i;
    print('$x * $i = $j');
  }
}