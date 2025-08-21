import 'taller.dart';

class Vehiculo {
  String placa; // se asigna al crear el vehículo
  late String diagnostico; // se asigna luego
  var estado ="Pendiente"; // inicia como Pendiente
  dynamic extraInfo;

  Vehiculo(this.placa);

  void registrarDiagnostico(String texto) {
    diagnostico = texto;
    this.estado = "Reparado";
    Taller.incrementarContador();
  }

  void resumen(){
    print("Placa: $placa");
    print("Diagnóstico: $diagnostico");
    print("Estado: $estado");
    print("Extra Info: $extraInfo");
    print("Taller: ${Taller.nombreTaller}");
    print("Mensaje del Taller: ${Taller.mensajeGeneral}");
    print("---------------------------");
  }
}
