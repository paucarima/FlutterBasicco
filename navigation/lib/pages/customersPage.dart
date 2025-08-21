import 'package:flutter/material.dart';

class Customerspage extends StatelessWidget {
  const Customerspage({super.key});

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
            child: const Text("PÁGINA DE CLIENTES")),
      ),
    );
  }
}
