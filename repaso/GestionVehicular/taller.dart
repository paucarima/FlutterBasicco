class Taller {
  static const String nombreTaller = "Taller Pepe"; //valor fijo
  static String mensajeGeneral = "Bienvenido al taller"; //valor variable
  static int _totalReparaciones = 0; // Variable privada

  static void cambiarMensaje(String nuevoMensaje) {
    mensajeGeneral = nuevoMensaje;
  }
  static void incrementarContador() {
    _totalReparaciones++;
  }

  static int obtenerTotalReparaciones() {
    return _totalReparaciones;
  }

}


