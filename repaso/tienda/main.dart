import 'producto.dart';
import 'tienda.dart';

void main(){
  Producto p1 = Producto("001");
  p1.registrarVenta("Zapatos deportivos", 59.99, "Talla 42");

  Producto p2 = Producto("002");
  p2.registrarVenta("Camisa de algodón", 29.99);


  Tienda.cambiarAnuncio("¡Gran venta de fin de temporada!");
  p1.resumen();
  p2.resumen();
  print("Total de productos vendidos: ${Tienda.obtenerVentas()}");
 
}