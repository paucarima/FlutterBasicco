import 'package:flutter/material.dart';
import 'package:navigation/databaseHelper.dart';
import 'package:navigation/product.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProductFormState();
  }
}

class ProductFormState extends State<ProductForm> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final priceController = TextEditingController();
    final descriptionController = TextEditingController();
    final emailController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Ingresa de Productos"),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: nameController,
                  decoration:
                      const InputDecoration(labelText: 'Nombre Producto'),
                ),
                TextField(
                  controller: priceController,
                  decoration: const InputDecoration(labelText: 'Precio'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(labelText: 'Descripcion'),
                ),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    final product = Product(
                      id: DateTime.now().microsecondsSinceEpoch,
                      name: nameController.text,
                      price: double.parse(priceController.text),
                      description: descriptionController.text,
                      email: emailController.text,
                    );
                    DatabaseHelper().insertProduct(product);
                    print('Producto ingreso en base de datos: ${product.name}');
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Producto añadido!!')));
                    Navigator.pop(context, true);
                    //cierre la pantalla
                  },
                  child: const Text('GRABAR'),
                )
              ],
            )));
  }
}
