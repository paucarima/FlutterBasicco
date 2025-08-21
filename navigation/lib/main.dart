import 'package:flutter/material.dart';
import 'package:navigation/pages/customersPage.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/listview_pages.dart';
import 'package:navigation/pages/productList_pages.dart';
import 'package:navigation/pages/products_page.dart';
import 'package:navigation/pages/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomePage(), routes: {
      //son lo mismo y retorna la pagina  una con arrow funtion y la otra normal
      Routes.products: (context) => const ProductsPage(),
      Routes.listView: (context) => const Listviewpage(),
      Routes.productList: (context) => ProductsListPage(),
      Routes.customers: (ctx) {
        return const Customerspage();
      }
    });
  }
}
