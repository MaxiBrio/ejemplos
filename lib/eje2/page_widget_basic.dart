import 'package:aaaa/eje2/page_main.dart';
import 'package:flutter/material.dart';

class PageWidgetBasic extends StatelessWidget {
  const PageWidgetBasic({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(title: const Text('Ejemplo Widget Básicos')),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8.0), //Margen interno
            color: const Color.fromARGB(219, 236, 201, 26), //color de fondo
            height: 500,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('horizontal 1', style: TextStyle(fontSize: 20)),
                    Text('horizontal 2', style: TextStyle(fontSize: 20)),
                  ],
                ),
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const PageMainExample()),
                    ),
                  ),
                  child: const Text("Regresa inicio ejemplos"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
