import 'taller.dart';

class Empleado {
  String nombre;
  Empleado(this.nombre);
  
  void actuazarMensajeTaller(String texto){
    Taller.cambiarMensaje(texto);
  }
}
