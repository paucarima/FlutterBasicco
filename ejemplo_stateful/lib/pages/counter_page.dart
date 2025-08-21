import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CounterPageState();
  }
}

class CounterPageState extends State {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print("invoca a build");
    //es un andamio para armar la aplicación
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print("$counter");
          setState(() => {});
          //guarda el estado y llama al build para repintar la pantalla
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "$counter",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
