import 'package:flutter/material.dart';

import 'package:navigation/pages/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
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
                        //final route = MaterialPageRoute(builder: (ctx) {
                        //ctx crea la navegacion para productos, sirve para retorna el valor de la pagina
                        //return const ProductsPage();
                        //});
                        //Navigator.push(context, route);
                        //context es el homePage para empujar con route a pagina productos
                        Navigator.pushNamed(context, "/products");
                      },
                      color: Colors.blue,
                      child: const Text("IR A PRODUCTOS")),
                  MaterialButton(
                      onPressed: () {
                        // final route = MaterialPageRoute(builder: (ctx) {
                        //   return const Customerspage();
                        // });
                        // Navigator.push(context, route);
                        Navigator.pushNamed(context, "/customers");
                      },
                      color: Colors.blue,
                      child: const Text("IR A CLIENTES")),
                  MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.listView);
                      },
                      color: Colors.blue,
                      child: const Text("IR A LISTA BÁSICA")),
                  MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.productList);
                      },
                      color: Colors.blue,
                      child: const Text("IR A LISTA DE PRODUCTOS"))
                ])));
  }
}
