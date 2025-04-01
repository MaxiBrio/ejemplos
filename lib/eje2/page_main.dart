import 'package:aaaa/eje2/page_exmple_final.dart';
import 'package:aaaa/eje2/page_widget_basic.dart';
import 'package:aaaa/eje2/page_widget_layout.dart';
import 'package:aaaa/eje2/page_widget_text.dart';
import 'package:flutter/material.dart';

class PageMainExample extends StatelessWidget {
  const PageMainExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplos Widget')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const PageWidgetBasic()),
                ),
              ),
              child: const Text('Ejemplos widgets Básicos'),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const PageWidgetLayout()),
                ),
              ),
              child: const Text('Ejemplos widgets Layout'),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const PageWidgetText()),
                ),
              ),
              child: const Text('Ejemplos widgets Text'),
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const PageExampleFinal()),
                ),
              ),
              child: const Text('Ejemplos Final'),
            ),
          ],
        ),
      ),
    );
  }
}
