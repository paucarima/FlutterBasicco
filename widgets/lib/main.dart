import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.house),
          onPressed: () => {print("hola")},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawer: const Drawer(
            child: Column(children: [
          SizedBox(
            height: 100,
          ),
          Text("OPCION 1"),
          Text("OPCION 2"),
          Text("OPCION 3"),
        ])),
        body: const Center(
          child: Text('Widgets '),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text("HOLA MUNDO APP"),
          ),
          titleTextStyle: const TextStyle(
            fontSize: 10,
            color: Colors.red,
          ),
        ),
        backgroundColor: Colors.lightGreen,
      ),
    );
  }
}
