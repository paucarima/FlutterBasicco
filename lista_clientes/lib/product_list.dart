import 'package:flutter/material.dart';
import 'package:navigation/databaseHelper.dart';
import 'package:navigation/edit_product.dart';
import 'package:navigation/product.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProductListState();
  }
}

class _ProductListState extends State<ProductList> {
  late Future<List<Product>> _productList;
  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  void _loadProducts() {
    setState(() {
      _productList = DatabaseHelper().getProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Productos"),
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder<List<Product>>(
        future: _productList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No existe productos que mostrar"));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final product = snapshot.data![index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text(product.email),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () async {
                          final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                //redireccion a ediccion
                                builder: (context) =>
                                    EditProduct(product: product),
                              ));
                          //si es verdadero se actualiza  en nav y carga los datos
                          if (result == true) {
                            _loadProducts();
                          }
                        },
                      ),
                      IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () async {
                            await DatabaseHelper().deleteProduct(product.id);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text('Producto Eliminado con extio')),
                            );
                            _loadProducts();
                          })
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.pushNamed(context, '/add');
          if (result == true) {
            _loadProducts();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
