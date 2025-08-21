import 'package:flutter/material.dart';
import 'package:navigation/databaseHelper.dart';
import 'package:navigation/product_form.dart';

import 'package:navigation/product_list.dart';

void main() {
  var dbHelper1 = DatabaseHelper();
  var dbHelper2 = DatabaseHelper();

  if (dbHelper1 == dbHelper2) {
    print('DatabaseHelper es un singleton');
  } else {
    print('DatabaseHelper no es un Singleton');
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProductList(),
      routes: {
        '/add': (context) => const ProductForm(),
      },
    );
  }
}
