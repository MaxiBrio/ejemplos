import 'package:aaaa/eje1/page_main.dart';
import 'package:aaaa/eje2/page_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ejemplos de Widget",
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/ejemplo1': (context) => PageMainExample(),
        '/ejemplo2': (context) => PageMainExample2(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/ejemplo1'),
              child: const Text("Ejemplo 1"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/ejemplo2'),
              child: const Text('Ejemplo 2'),
            ),
          ],
        ),
      ),
    );
  }
}
