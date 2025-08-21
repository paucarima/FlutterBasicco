// 1. Crear dos referencias distintas a la clase ServidorCorreo.
// 2. Conectar el servidor utilizando una de las referencias.
// 3. Enviar al menos dos correos electrónicos utilizando ambas referencias.
// 4. Imprimir si ambas referencias apuntan a la misma instancia (=).
// 5. Imprimir si el servidor se encuentra conectado utilizando el getter
// estaConectado.
// 6. Desconectar el servidor.

import 'servidor_correo.dart';

void main() {
  final servidor1 = ServidorCorreo();
  final servidor2 = ServidorCorreo();

  servidor1.conectar();
  servidor1.enviarCorreo("paucarei@gmail.com", "Hola Pau");
  servidor2.enviarCorreo("assdsad@gmail.ccom","Hola Asd");

  print("¿Ambas referencias apuntan a la misma instancia? ${servidor1 == servidor2}");
  print("¿El servidor está conectado? ${servidor1.estaConectado}");
  servidor1.desconectar();
  print("¿El servidor está conectado? ${servidor1.estaConectado}"); 

}
