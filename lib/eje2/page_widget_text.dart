import 'package:aaaa/eje2/page_main.dart';
import 'package:flutter/material.dart';

class PageWidgetText extends StatelessWidget {
  const PageWidgetText({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(title: const Text('Ejemplo Widget Textos')),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8.0), //Margen interno
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Texto Usando el widget Text',
                  style: TextStyle(fontSize: 20),
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Texto ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'usando el widget',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' RichText'),
                    ],
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const PageMainExample()),
                      ),
                    ),
                    child: const Text(
                      "Regresa inicio ejemplos",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
