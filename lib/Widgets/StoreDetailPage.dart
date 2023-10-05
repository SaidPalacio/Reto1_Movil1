import 'package:flutter/material.dart';
import 'package:reto1/Widgets/MyMapPage.dart';

class StoreDetailPage extends StatelessWidget {
  final Store store;

  StoreDetailPage({required this.store});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de la Tienda'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Nombre: ${store.name}'),
            Text('Categoría: ${store.category}'),
            Text('Rating: ${store.rating.toStringAsFixed(1)}'),
            Text('Dirección: ${store.location}'),
            // Agrega más detalles de la tienda aquí
          ],
        ),
      ),
    );
  }
}