class Jugador {
  static const String nombreJuego = "dart_game";
  final int id;
  late String nombre;
  var puntuacion = 0;
  dynamic extra;

  Jugador(this.id);
}

void main() {
 

  Jugador jugador1 = Jugador(1);

  jugador1.nombre = "Juan";

  jugador1.puntuacion = 100;
  jugador1.extra = "Premio";
  jugador1.extra = 200; // Cambiando el valor de extra
  jugador1.extra = true;

  print("Juego: ${Jugador.nombreJuego}");
  print("Jugador ID: ${jugador1.id}");
  print("Nombre: ${jugador1.nombre}");
  print("Puntuación: ${jugador1.puntuacion}");
  print("Equipo: ${jugador1.extra}");
}
