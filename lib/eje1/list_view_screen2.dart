import 'package:flutter/material.dart';

class ListViewScreen2 extends StatelessWidget {
  const ListViewScreen2({super.key});
  final estudiantes = const [
    'Juan Ignacio',
    'Pedro',
    'Diego',
    'Carolina',
    'Antonia',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplo 01')),
      body: ListView(
        children: [
          ...estudiantes.map(
            (e) => ListTile(
              leading: const Icon(Icons.people_rounded),
              title: Text(e),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
