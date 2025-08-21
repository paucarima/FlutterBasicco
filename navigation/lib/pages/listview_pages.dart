import 'package:flutter/material.dart';

class Listviewpage extends StatelessWidget {
  const Listviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Listview Básico"),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              title: Text("Elemento 1"),
              subtitle: Text("Subtitle del elemento 1"),
              leading: Icon(
                Icons.add_to_queue,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Elemento 2"),
              subtitle: Text("Subtitle del elemento 2"),
              leading: Icon(
                Icons.add_to_queue,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Elemento 3"),
              subtitle: Text("Subtitle del elemento 3"),
              leading: Icon(
                Icons.add_to_queue,
                color: Colors.blue,
              ),
            )
          ],
        ));
  }
}
