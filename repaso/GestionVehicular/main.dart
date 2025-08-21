import 'empleado.dart';
import 'taller.dart';
import 'vehiculo.dart';

void main() {
  Empleado emp1 = Empleado("Juan");
  emp1.actuazarMensajeTaller("Taller abierto de 9am a 6pm");

  Vehiculo v1 = Vehiculo("ABC123");
  Vehiculo v2 = Vehiculo("XYZ789");

  v1.registrarDiagnostico("Cambio de aceite");
  v2.registrarDiagnostico("Revisión de frenos");

  v1.extraInfo = "Cliente frecuente";
  v2.extraInfo = 150.75;

  v1.resumen();
  v2.resumen();

  print("Total reparaciones realizadas: ${Taller.obtenerTotalReparaciones()}");
}
