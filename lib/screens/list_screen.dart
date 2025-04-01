import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final productos = [
      'Producto 1',
      'Producto 2',
      'Producto 3',
      'Producto 4',
      'Producto 5',
      'Producto 6',
      'Producto 7'
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 165, 0, 1),
          elevation: 10,
          title: const Text('Listado de productos'),
        ),
        body: ListView.separated(
          itemCount: productos.length,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.inventory),
            title: Text(productos[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              final nombre = productos[index];
              Navigator.pushNamed(context, 'detail',
                  arguments: {'nombre': nombre});
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
