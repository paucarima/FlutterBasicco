class Tienda {
  static const String nombre = "Mi Tienda";
  static var anuncio = "Bienvenido a la tienda";
  static int _productosVendidos = 0;

  static cambiarAnuncio(String nuevoAnuncio) {
    anuncio = nuevoAnuncio;
  }
  
  static void aumentarVentas() {
    _productosVendidos++;
  }

  static int obtenerVentas(){
    return _productosVendidos;
  }
}
