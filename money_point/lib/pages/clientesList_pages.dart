import 'package:flutter/material.dart';
import 'package:navigation/pages/cliente_pages.dart';

class ClienteListPage extends StatelessWidget {
  final List<Cliente> clientes = [
    Cliente(nombre: "1.Rosa", apellido: "Mela"),
    Cliente(nombre: "2.Luna", apellido: "Piedra"),
    Cliente(nombre: "3.Sol", apellido: "Tigris"),
    Cliente(nombre: "4.Nieble", apellido: "Sombra"),
    Cliente(nombre: "5.Flama", apellido: "León"),
    Cliente(nombre: "6.Brisa", apellido: "Vuela"),
    Cliente(nombre: "7.Fulgo", apellido: "Lobo"),
    Cliente(nombre: "8.Relam", apellido: "Paloma"),
    Cliente(nombre: "9.Cara", apellido: "Luna"),
    Cliente(nombre: "10.Rosa", apellido: "Mela"),
  ];

  ClienteListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
            itemCount: clientes.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(clientes[index].nombre),
                subtitle: Text(clientes[index].apellido),
              );
            }));
  }
}
