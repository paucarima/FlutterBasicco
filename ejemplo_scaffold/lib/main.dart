import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Text("OPCIOÓN 1"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.audio_file,
                    color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Text("OPCIOÓN 2"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.beach_access_sharp,
                    color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Text("OPCIOÓN 3"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.access_alarm,
                    color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Text("OPCIOÓN 4"),
                ],
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Center(
            child: Text("APP TEST"),
          ),
          titleTextStyle: const TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.red,
          ),
          centerTitle: true,
          shadowColor: Colors.black,
          elevation: 30,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.stacked_bar_chart), label: "Panel")
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () => {print("TEST")},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
