
void main() {
  final double a = 100;
  final double v0 = 30;
  final double t = 2;
  final double f = v0 + (a * t);
	if(f <= 40) return print("Velocidade muito lento.");
	if(f >= 40 && f <= 60) return print("Velocidade permitida.");
	if(f >= 60 && f <= 80) return print("Velocidade de cruzeiro.");
	if(f >= 80 && f <= 120) return print("Velocidade rápido.");
	if(f > 120) return print("Velocidade muito rápido.");
}