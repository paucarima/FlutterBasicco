class ImpresoraCentral {
  static final ImpresoraCentral _instancia =
      ImpresoraCentral._interno(); // Constructor privado
  factory ImpresoraCentral() =>
      _instancia; // Retorna la misma instancia cada vez que se llama al constructor
  ImpresoraCentral._interno(); // Constructor privado
  bool _conectada = false;
  bool get estaConectada => _conectada; // asiganacion de solo lectura
  void conectar() {
    if (!_conectada) {
      _conectada = true;
      print("Impresora conectada");
    } else {
      print("La impresora ya estaba conectada");
    }
  }

  void imprimir(String archivo) {
    if (_conectada) {
      print("Imprimiendo ${archivo}");
    } else {
      print("No se puede imprimir. La impresora no está conectada.");
    }
  }
}
