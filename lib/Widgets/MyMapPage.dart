import 'package:flutter/material.dart';
import 'package:reto1/Widgets/MyMapView.dart';


class MyMapPage extends StatefulWidget {
  @override
  _MyMapPageState createState() => _MyMapPageState();
}

class _MyMapPageState extends State<MyMapPage> {
  // Variables para manejar el estado de la aplicación.
  bool showMap = false; // Para controlar la visibilidad del mapa.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explorar Tiendas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showMap = true; // Mostrar el mapa al presionar el botón.
                });
              },
              child: Text('Explorar Tiendas'),
            ),
            if (showMap)
              MyMapView(), // Widget para visualizar el mapa.

            ElevatedButton(
              onPressed: () {
                // Aquí puedes implementar la visualización de tiendas.
              },
              child: Text('Visualizar Tiendas'),
            ),

            ElevatedButton(
              onPressed: () {
                // Aquí puedes implementar el filtrado por categorías.
              },
              child: Text('Filtrar por Categorías'),
            ),

            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar funcionalidades adicionales.
              },
              child: Text('Funcionalidades Adicionales'),
            ),
          ],
        ),
      ),
    );
  }
}