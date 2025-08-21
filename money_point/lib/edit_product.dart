import 'package:flutter/material.dart';
import 'package:navigation/databaseHelper.dart';
import 'package:navigation/product.dart';

class EditProduct extends StatefulWidget {
  final Product product;
  const EditProduct({super.key, required this.product});

  @override
  State<StatefulWidget> createState() {
    return EditProductState();
  }
}

class EditProductState extends State<EditProduct> {
  late TextEditingController nameController;
  late TextEditingController priceController;
  late TextEditingController descriptionController;
  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.product.name);
    priceController =
        TextEditingController(text: widget.product.price.toString());

    descriptionController =
        TextEditingController(text: widget.product.description);
    emailController = TextEditingController(text: widget.product.email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Edicción de Productos"),
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
                  onPressed: () async {
                    final updateProduct = Product(
                      id: widget.product.id,
                      name: nameController.text,
                      price: double.parse(priceController.text),
                      description: descriptionController.text,
                      email: emailController.text,
                    );
                    await DatabaseHelper().updateProduct(updateProduct);
                    print('Producto update: ${updateProduct.name}');
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Producto update!!')));
                    Navigator.pop(context, true);
                    //cierre la pantalla
                  },
                  child: const Text('UPDATE'),
                )
              ],
            )));
  }
}
