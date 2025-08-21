import 'package:flutter_test/flutter_test.dart';
import 'package:navigation/databaseHelper.dart';
import 'package:navigation/product.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  late DatabaseHelper databaseHelper;

  setUp(() {
    databaseHelper = DatabaseHelper();
  });

  test('Insert product', () async {
    var product = Product(
        id: 1,
        name: 'TestProduct',
        price: 9.99,
        description: 'Test Description',
        email: 'assa@ssdsa.com');
    await databaseHelper.insertProduct(product);
    var products = await databaseHelper.getProducts();
    for (var product in products) {
      print(
          'ID:${product.id}, Name: ${product.name}, Price: ${product.price}, Description: ${product.description}, email: ${product.email}');
    }
  });
  test('Update product', () async {
    var product = Product(
        id: 1,
        name: 'UpdateProduct',
        price: 200.99,
        description: 'Update Description',
        email: 'acsa@ssdsa.com');
    await databaseHelper.updateProduct(product);
    var products = await databaseHelper.getProducts();
    for (var product in products) {
      print(
          'ID:${product.id}, Name: ${product.name}, Price: ${product.price}, Description: ${product.description},email: ${product.email}');
    }
  });

  test('Delete product', () async {
    await databaseHelper.deleteProduct(1);
    var products = await databaseHelper.getProducts();
    for (var product in products) {
      print(
          'ID:${product.id}, Name: ${product.name}, Price: ${product.price}, Description: ${product.description},email: ${product.email}');
    }
  });
}
