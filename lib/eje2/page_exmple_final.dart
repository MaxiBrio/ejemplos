import 'package:aaaa/eje2/page_main.dart';
import 'package:flutter/material.dart';

class PageExampleFinal extends StatelessWidget {
  const PageExampleFinal({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Ejemplo Final')),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8.0), //Margen interno
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: NetworkImage(
                    'https://tienda.uautonoma.cl/wp-content/uploads/2022/12/pumin.gif',
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_home_work, color: Colors.orange, size: 24),
                    Icon(Icons.favorite, color: Colors.pink, size: 24),
                  ],
                ),
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const PageMainExample()),
                    ),
                  ),
                  child: const Text('Regresa inicio ejemplos'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
