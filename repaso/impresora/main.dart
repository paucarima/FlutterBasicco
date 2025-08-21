import 'impresora.dart';

void main() {
  final impresora1 = ImpresoraCentral();
  impresora1.conectar();
  impresora1.imprimir("documento.pdf");

  final impreora2 = ImpresoraCentral();
  impreora2.imprimir("foto.jpg");

  print(impresora1 == impreora2);
}
