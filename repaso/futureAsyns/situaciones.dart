// Codifique dos situaciones de la vida real donde una tarea tarda en completarse, pero puede seguir haciendo otras cosas mientras espera.
// Use Future, async y await para simular cada caso en Dart.
// Cada ejemplo debe incluir al menos una función asincrónica con await.
void main(){
  print("Estoy en mi cocina");
  prepararCafe();
  print("Estoy esperando el café");
  print("A disfrutar el café");


}

Future<String> hacerCafe() {
  return Future.delayed(Duration(seconds: 4), () => "Café listo");
}
void prepararCafe() async {
  print("Poniendo el café en la cafetera");
  final mensaje = await hacerCafe();
  print(mensaje);
 
}

