import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size_screen =
        MediaQuery.of(context).size; //obtiene el tamaño de la pantalla
    return Scaffold(
        appBar: AppBar(title: const Text("Menu")),
        body: Container(
          color: Colors.grey[300],
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: size_screen.height * 0.4,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(255, 165, 0, 1),
                  Color.fromRGBO(255, 100, 2, 1),
                ])),
                child: Stack(
                  children: [
                    Positioned(
                        //Positioned(child: Bubble(), top: 90, left: 30),
                        child: Container(
                      //extraer como metodo
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromRGBO(255, 255, 255, 0.15)),
                    )),
                    const Center(
                      child: Text(
                        'INCIO',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: FloatingActionButton(
                  backgroundColor: const Color.fromRGBO(255, 165, 0, 1),
                  child: const Icon(
                      Icons.input), //agrega icono, pruebe con  otras opciones
                  onPressed: () {
                    Navigator.pushNamed(context, 'list');
                  }, //metodo que detona la función al presiona el boton
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 350,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/ejemplo1'),
                      child: const Text("Ejemplo 1"),
                    ),
                    const SizedBox(height: 10), // Espaciado entre botones
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/ejemplo2'),
                      child: const Text('Ejemplo 2'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
