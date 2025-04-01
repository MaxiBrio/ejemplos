import 'package:flutter/material.dart';

class ListViewScreen3 extends StatelessWidget {
  const ListViewScreen3({super.key});
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
      body: ListView.separated(
        itemCount: estudiantes.length,
        itemBuilder:
            (context, index) => ListTile(
              leading: const Icon(Icons.people_rounded),
              title: Text(estudiantes[index]),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
