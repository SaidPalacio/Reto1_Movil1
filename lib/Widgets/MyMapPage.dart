import 'package:flutter/material.dart';
import 'package:reto1/Widgets/MyMapView.dart';
import 'package:reto1/Widgets/StoreDetailPage.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Lista de tiendas
  List<Store> stores = [
    Store(
      name: 'Tienda 1',
      category: 'Moda',
      rating: 4.5,
      location: 'Dirección 1',
    ),
    Store(
      name: 'Tienda 2',
      category: 'Electrónica',
      rating: 4.2,
      location: 'Dirección 2',
    ),
    // Agrega más tiendas aquí
  ];

  // Filtros
  String selectedCategory = 'Todas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explorar Tiendas'),
      ),
      body: Column(
        children: <Widget>[
          // Filtro por categoría
          DropdownButton<String>(
            value: selectedCategory,
            items: getCategories(),
            onChanged: (value) {
              setState(() {
                selectedCategory = value!;
              });
            },
          ),
          // Lista de tiendas
          Expanded(
            child: ListView.builder(
              itemCount: stores.length,
              itemBuilder: (context, index) {
                // Filtrar tiendas por categoría
                if (selectedCategory == 'Todas' ||
                    stores[index].category == selectedCategory) {
                  return ListTile(
                    title: Text(stores[index].name),
                    subtitle: Text(stores[index].location),
                    trailing: Text('Rating: ${stores[index].rating.toStringAsFixed(1)}'),
                    onTap: () {
                      // Navegar a la vista de detalles de la tienda
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StoreDetailPage(store: stores[index]),
                        ),
                      );
                    },
                  );
                } else {
                  return Container(); // No mostrar tiendas que no coinciden con la categoría seleccionada
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  // Obtener la lista de categorías
  List<DropdownMenuItem<String>> getCategories() {
    List<DropdownMenuItem<String>> items = ['Todas', 'Moda', 'Electrónica', 'Alimentos']
        .map<DropdownMenuItem<String>>(
          (String value) => DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          ),
        )
        .toList();
    return items;
  }
}

class Store {
  final String name;
  final String category;
  final double rating;
  final String location;

  Store({
    required this.name,
    required this.category,
    required this.rating,
    required this.location,
  });
}