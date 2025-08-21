import 'package:flutter/material.dart';

class ClientesPage extends StatelessWidget {
  const ClientesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            child: const Text("PAGINA DE CLIENTES")),
      ),
    );
  }
}
