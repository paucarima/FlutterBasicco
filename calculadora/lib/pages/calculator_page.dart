import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CalculatorPageState();
  }
}

class CalculatorPageState extends State {
  int? valor1;
  int? valor2;
  int resultado = 0;
  final TextEditingController controlador1 = TextEditingController(text: "0");
  final TextEditingController controlador2 = TextEditingController(text: "0");
  void liberar() {
    //este no se para que sirve pero funciona
    //intente liberar el valor talvez?
    controlador1.dispose();
    controlador2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("APP CALCULADORA"),
          ),
          backgroundColor: Colors.red,
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Ingrese valor 1"),
                TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.right,
                  controller: controlador1,
                  onChanged: (text) {
                    if (text.isEmpty) {
                      valor1 = 0;
                    } else {
                      valor1 = int.parse(text);
                    }
                  },
                ),
                const Text("Ingrese valor 2"),
                TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.right,
                  controller: controlador2,
                  onChanged: (text) {
                    if (text.isEmpty) {
                      valor2 = 0;
                    } else {
                      valor2 = int.parse(text);
                    }
                  },
                ),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    resultado = (valor1 ?? 0) + (valor2 ?? 0);
                    //?? va tomar el valor de cero de la derecha o el que este en text

                    setState(() {});
                  },
                  child: const Text(
                    "CALCULAR",
                    style: TextStyle(backgroundColor: Colors.blue),
                  ),
                ),
                Text("Total: ${resultado.toString()}"),
              ],
            )));
  }
}
