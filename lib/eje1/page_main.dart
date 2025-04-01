import 'package:aaaa/eje1/list_view_screen.dart';
import 'package:aaaa/eje1/list_view_screen1.dart';
import 'package:aaaa/eje1/list_view_screen2.dart';
import 'package:aaaa/eje1/list_view_screen3.dart';
import 'package:flutter/material.dart';

class PageMainExample2 extends StatelessWidget {
  const PageMainExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo 1')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => ListViewScreen())),
              ),
              child: const Text("Ejemplo 1"),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => ListViewScreen1()),
                ),
              ),
              child: const Text("Ejemplo 2"),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => ListViewScreen2()),
                ),
              ),
              child: const Text("Ejemplo 3"),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => ListViewScreen3()),
                ),
              ),
              child: const Text("Ejemplo 4"),
            ),
          ],
        ),
      ),
    );
  }
}
