void main() {
  print("Estoy en mi casa");
  pedirPizza();
  print("Estoy esperando la pizza");
}

Future<String> prepararPizza() {
  return Future.delayed(Duration(seconds: 3), () => "Pizza lista");
}

void pedirPizza() async {
  print("llamando a la pizzeria");
  final mensaje = await prepararPizza();
  print(mensaje);
  print("A comer la pizza");
}

