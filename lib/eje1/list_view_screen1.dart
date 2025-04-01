import 'package:flutter/material.dart';

class ListViewScreen1 extends StatelessWidget {
  const ListViewScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ejemplo 1")),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.people_rounded),
            title: Text("juan ignacio"),
          ),
        ],
      ),
    );
  }
}
