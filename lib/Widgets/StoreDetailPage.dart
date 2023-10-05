import 'package:flutter/material.dart';
import 'package:reto1/Widgets/MyMapPage.dart';

class StoreDetailPage extends StatelessWidget {
  final Store store;

  StoreDetailPage({required this.store});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(store.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Categoría: ${store.category}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Rating: ${store.rating.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Dirección: ${store.location}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Promociones Actuales: ${store.promotions}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),  
            ),
            SizedBox(height: 10,),
            // Agrega aquí las promociones actuales de la tienda
            Text(
              'Horarios de Atención:${store.openingHours}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Agrega aquí los horarios de atención de la tienda (pueden ser días y horas)
          ],
        ),
      ),
    );
  }
}