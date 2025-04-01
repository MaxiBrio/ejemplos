import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    /*capturamos parametros desde el contexto*/
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    final nombre = arguments['nombre'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 165, 0, 1),
          elevation: 10,
          title: Text(nombre),
        ),
        body: Card(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.inventory_2_rounded),
                title: Text(nombre),
                subtitle: const Text('Agrege una descripción'),
              ),
              const Padding(
                padding: const EdgeInsets.all(5),
                child: Center(
                    child: Image(
                  width: double.infinity,
                  fit: BoxFit.cover, //austa la imagen al contenedor
                  image: NetworkImage(
                      'https://www.comedera.com/wp-content/uploads/2022/12/Empanada-chilena-de-pollo-shutterstock_478589707.jpg'),
                )),
              )
            ],
          ),
        ));
  }
}
