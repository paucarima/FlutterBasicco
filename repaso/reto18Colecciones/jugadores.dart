// Ejercicio 2 - Ranking de Jugadores
// 1. Declara un Map<String, int> llamado puntajes, donde la clave representa el
// nombre del jugador y el valor su puntaje.
// 2. Agrega al menos cuatro jugadores con puntajes distintos.
// 3. Muestra todos los nombres de los jugadores registrados.
// 4. Imprime el puntaje de un jugador específico utilizando su nombre como clave.
// 5. Modifica el puntaje de uno de los jugadores.
// 6. Agrega un nuevo jugador con su respectivo puntaje.
// 7. Elimina a un jugador del mapa.
// 8. Imprime el contenido completo del mapa actualizado.

void main() {
  Map<String, int> puntajes = {
    "Paola": 1500,
    "Andres": 1200,
    "Ana": 1800,
    "Diana": 1600
  };

  // Mostrar todos los nombres de los jugadores registrados
  print("Jugadores registrados:");
  puntajes.keys.forEach((nombre) => print(nombre));

  // Imprimir el puntaje de un jugador específico
  String jugadorEspecifico = "Andres";
  print("\nPuntaje de $jugadorEspecifico: ${puntajes[jugadorEspecifico]}");

  // Modificar el puntaje de uno de los jugadores
  puntajes["Paola"] = 1550;
  print("\nPuntaje actualizado de Paola: ${puntajes["Paola"]}");

  // Agregar un nuevo jugador con su respectivo puntaje
  puntajes["Eve"] = 1400;
  print("\nNuevo jugador agregado: Eve con puntaje ${puntajes["Eve"]}");

  // Eliminar a un jugador del mapa
  puntajes.remove("Ana");
  print("\nJugador Ana eliminado.");

  // Imprimir el contenido completo del mapa actualizado
  print("\nContenido completo del mapa actualizado:");
  puntajes.forEach((nombre, puntaje) => print("$nombre: $puntaje"));
}