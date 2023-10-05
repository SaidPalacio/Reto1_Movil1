import 'package:flutter/material.dart';

import 'package:reto1/Widgets/StoreDetailPage.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Lista de tiendas
  List<Store> stores = [
    Store(
      name: 'Zara',
      category: 'Moda',
      rating: 4.5,
      location: 'calle 100 # 54-34',
      promotions: [
      'Descuento del 20% en ropa de invierno.',
      '2x1 en accesorios de moda.',
    ],
    openingHours: [
      'Lunes a Viernes: 9:00 AM - 8:00 PM',
      'Sábados y Domingos: 10:00 AM - 6:00 PM',
    ],
    ),
    Store(
      name: 'ElectroMundo',
      category: 'Electrónica',
      rating: 4.2,
      location: 'calle 102 # 76-12',
      promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
    Store(
      name: 'FrutaExpress',
      category: 'Alimentos',
      rating: 4.8,
      location: 'calle 119 # 123-321',
       promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
    Store(
      name: 'H&M',
      category: 'Moda',
      rating: 4.8,
      location: 'calle 120 # 43-54',
       promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
    Store(
      name: 'GadgetsTech',
      category: 'Electrónica',
      rating: 4.7,
      location: 'calle 104 # 13-31',
       promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
    Store(
      name: 'ElectroBoutique',
      category: 'Electrónica',
      rating: 4.4,
      location: 'calle 106 #20-54',
       promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
    Store(
      name: 'SaborGourmet',
      category: 'Alimentos',
      rating: 4.1,
      location: 'calle 118 # 32-53',
       promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
    Store(
      name: 'Mercado Fresco',
      category: 'Alimentos',
      rating: 4.7,
      location: 'calle 125 # 231-12',
       promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
    Store(
      name: 'SuperAlimentos',
      category: 'Alimentos',
      rating: 4.6,
      location: 'calle 112 # 123-21',
       promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
    Store(
      name: 'TechWorld',
      category: 'Electrónica',
      rating: 4.7,
      location: 'calle 107 # 32-54',
       promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
    Store(
      name: 'Gucci',
      category: 'Moda',
      rating: 4.0,
      location: 'calle 115 # 23-46',
       promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
     Store(
      name: 'Adidas',
      category: 'Deportes',
      rating: 4.7,
      location: 'calle 121 # 82-72',
       promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
     Store(
      name: 'Nike',
      category: 'Deportes',
      rating: 4.6,
      location: 'calle 124 # 12-24',
       promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
     Store(
      name: 'Puma',
      category: 'Deportes',
      rating: 4.5,
      location: 'calle 116 # 32-09',
      promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
     Store(
      name: 'DecoVida',
      category: 'Hogar',
      rating: 4.5,
      location: 'calle 132 # 22-12',
      promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
     Store(
      name: 'Jamar',
      category: 'Hogar',
      rating: 4.8,
      location: 'calle 134 # 102-24',
      promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
    ),
     Store(
      name: 'Hogar Ideal',
      category: 'Hogar',
      rating: 4.3,
      location: 'calle 112 # 23-40',
      promotions: [
      'Oferta especial en laptops: ¡Hasta un 30% de descuento!',
      'Compra un teléfono y obtén unos auriculares de regalo.',
    ],
    openingHours: [
      'Lunes a Sábados: 10:00 AM - 7:00 PM',
      'Domingos: 11:00 AM - 5:00 PM',
    ],
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
    List<DropdownMenuItem<String>> items = ['Todas', 'Moda', 'Electrónica', 'Alimentos', 'Deportes', 'Hogar']
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
  final List<String> promotions; // Lista de promociones
  final List<String> openingHours; // Lista de horarios de apertura

  Store({
    required this.name,
    required this.category,
    required this.rating,
    required this.location,
    required this.promotions,
    required this.openingHours,
  });
}