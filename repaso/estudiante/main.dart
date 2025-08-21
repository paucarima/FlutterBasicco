 import 'estudiante.dart';

void main() {
  final estudiante1 = Estudiante("Carlos");
  final estudiante2 = Estudiante("Ana");

  estudiante1.cuaderno = "Cuaderno de Matemáticas";
  estudiante2.cuaderno = "Cuaderno de Ciencias";

  print("Nombre del Estudiante 1: ${estudiante1.nombre}");
  print("Cuaderno del Estudiante 1: ${estudiante1.cuaderno}");
  print("Nombre del Estudiante 2: ${estudiante2.nombre}");
  print("Cuaderno del Estudiante 2: ${estudiante2.cuaderno}");

  print(Estudiante.pizarra); 
  estudiante1.escribirEnPizarra("Hola, clase!");
  print(Estudiante.pizarra);

  print("Total de estudiantes: ${Estudiante.obtenerContador()}");

  
}