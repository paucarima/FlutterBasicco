import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite/sql.dart';
import 'package:sqflite/sqlite_api.dart';
import 'product.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;
  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'products1.db');
    return await openDatabase(path, version: 1, onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE products(id INTEGER PRIMARY KEY, name TEXT, price REAL, description TEXT, email TEXT)",
      );
    });
  }

  Future<void> insertProduct(Product product) async {
    final db = await database;
    await db.insert(
      'products',
      product.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print("Product insertado: ${product.name}");
  }

  Future<void> updateProduct(Product product) async {
    final db = await database;
    await db.update('products', product.toMap(),
        where: 'id=?', whereArgs: [product.id]);
  }

  Future<void> deleteProduct(int id) async {
    final db = await database;
    await db.delete(
      'products',
      where: 'id=?',
      whereArgs: [id],
    );
    print('Product deleted: $id');
  }

  Future<List<Product>> getProducts() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('products');
    return List.generate(maps.length, (i) {
      return Product(
        id: maps[i]['id'],
        name: maps[i]['name'],
        price: maps[i]['price'],
        description: maps[i]['description'],
        email: maps[i]['email'],
      );
    });
  }
}
