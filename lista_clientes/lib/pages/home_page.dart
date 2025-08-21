import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              //pop (disparo)saca la pila y pone de nuevo
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/clientes");
                      },
                      color: Colors.blue,
                      child: const Text("LISTA CLIENTES")),
                ])));
  }
}
