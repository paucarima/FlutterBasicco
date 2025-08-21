void main() {
  print("Estoy en mi oficina");
  enviarCorreo();
  print("Estoy esperando la respuesta del correo");
  print("A revisar la bandeja de entrada");
}

Future<String> redactarCorreo() {
  return Future.delayed(Duration(seconds: 2), () => "Correo enviado");
}

void enviarCorreo() async {
  print("Redactando el correo");
  final mensaje = await redactarCorreo();
  print(mensaje);
  
}
