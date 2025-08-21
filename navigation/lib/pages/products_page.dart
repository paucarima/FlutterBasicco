import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

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
            child: const Text("PAGINA DE PRODUCTOS")),
      ),
    );
  }
}
