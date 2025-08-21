class Estudiante {
  final String nombre;
  late String cuaderno;
  static String pizarra = "Pizarra Blanca";
  static const String escuela = "Escuela Primaria";
  static int contadorEstudiantes = 0;

  void escribirEnPizarra(String mensaje) {
    pizarra = mensaje;
  }

  static obtenerContador(){
    return contadorEstudiantes;
  }
  
  Estudiante(this.nombre) {
    contadorEstudiantes++;
  }
}
