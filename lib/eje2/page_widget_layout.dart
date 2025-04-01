import 'package:aaaa/eje2/page_main.dart';
import 'package:flutter/material.dart';

class PageWidgetLayout extends StatelessWidget {
  const PageWidgetLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 48, 114, 228),
        appBar: AppBar(title: const Text('Ejemplos Widgets Para LayOuts')),
        body: Stack(
          children: [
            Table(
              border: TableBorder.all(),
              children: const [
                TableRow(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 87, 79, 230),
                  ),
                  children: [
                    TableCell(
                      child: Text('Celda 1', style: TextStyle(fontSize: 30)),
                    ),
                    TableCell(
                      child: Text('Celda 2', style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 87, 79, 230),
                  ),
                  children: [
                    TableCell(child: Text('Celda 3')),
                    TableCell(child: Text('Celda 4')),
                  ],
                ),
              ],
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
    );
  }
}
