import 'tienda.dart';

class Producto {
  String codigo;
  late String descripcion;
  var precio;
  dynamic observaciones;

  Producto(this.codigo);

  void registrarVenta(String desc, var prec, [dynamic obs]) {
    descripcion = desc;
    precio = prec;
    observaciones = obs;
    Tienda.obtenerVentas();

  }

    void resumen() {
    print("Código: $codigo");
    print("Descripción: $descripcion");
    print("Precio: \$${precio}");
    print("Observación: $observaciones");
    print("Tienda: ${Tienda.nombre}");
    print("Anuncio actual: ${Tienda.anuncio}");
    print("----------------------------");
  }
}
