// Crear la clase ServidorCorreo.
// Implementar una clase que represente un servidor de correo electrónico, utilizando el
// patrón Singleton. La clase debe tener la siguiente estructura:
// • Constructor privado para evitar instancias externas.
// • Constructor factory que retorne siempre la misma instancia.
// • Atributo estático privado que almacene la instancia única de la clase.
// • Atributo privado: _conectado de tipo bool, que indique si el servidor está
// conectado.
// • Getter público: estaConectado, que retorne el valor actual del atributo
// conectado.
// Metodos:
// • conectar(): establece la conexión al servidor si aún no está conectada. Si ya lo
// está, debe imprimir un mensaje indicando que ya existe una conexión activa.
// • enviar Correo(String destinatario, String asunto): simula el envío de un
// correo. Solo debe ejecutarse si el servidor está conectado.
// • desconectarO: cierra la conexión si está activa.

class ServidorCorreo {
  static final ServidorCorreo _instancia = ServidorCorreo._interno();
  
  factory ServidorCorreo() => _instancia;

  ServidorCorreo._interno();

  bool _conectado = false;

  bool get estaConectado => _conectado;

  void conectar() {
    if (!_conectado) {
      _conectado = true;
      print("Servidor conectado");
    } else {
      print("El servidor ya estaba conectado");
    }
  }

  void enviarCorreo(String destinatario, String asunto) {
    if (_conectado) {
      print("Enviando correo a $destinatario con asunto: $asunto");
    } else {
      print("No se puede enviar el correo. El servidor no está conectado.");
    }
  }

  void desconectar() {
    if (_conectado) {
      _conectado = false;
      print("Servidor desconectado");
    } else {
      print("El servidor ya estaba desconectado");
    }
  }
}