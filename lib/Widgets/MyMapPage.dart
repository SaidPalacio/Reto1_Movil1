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
      promotions: "Descuento del 30% en Calzado de Diseñador: Lleva tus pasos al siguiente nivel con nuestro calzado de diseñador. Disfruta de un 30% de descuento en una selección de zapatos de alta calidad que complementarán tu estilo.",
    openingHours: 'Lunes a Viernes: 9:00 AM - 8:00 PM Sábados y Domingos: 10:00 AM - 6:00 PM',
    ),
    Store(
      name: 'ElectroMundo',
      category: 'Electrónica',
      rating: 4.2,
      location: 'calle 102 # 76-12',
      promotions: "Descuento del 20% en Lavadoras de Carga Frontal: ¡Ahorra un 20% en todas las lavadoras de carga frontal de nuestra tienda! Lleva a casa la última tecnología en lavandería a precios más bajos.",
      
    openingHours: 'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
    Store(
      name: 'FrutaExpress',
      category: 'Alimentos',
      rating: 4.8,
      location: 'calle 119 # 123-321',
      promotions: "Oferta de la Semana: 2x1 en Frutas y Verduras Frescas: Compra tus frutas y verduras favoritas y lleva la segunda unidad gratis. ¡Mantente saludable y ahorra al mismo tiempo!",
    
    openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',   
    ),
    Store(
      name: 'H&M',
      category: 'Moda',
      rating: 4.8,
      location: 'calle 120 # 43-54',
      promotions: "Venta Especial de Verano: 40% de Descuento en Ropa de Verano: ¡Prepárate para el verano con estilo! Obtén un 40% de descuento en una amplia selección de prendas de verano, desde trajes de baño hasta vestidos y accesorios.",
      openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
    Store(
      name: 'GadgetsTech',
      category: 'Electrónica',
      rating: 4.7,
      location: 'calle 104 # 13-31',
      promotions: 'Oferta del 15% en Refrigeradores Inteligentes: Renueva tu cocina con un refrigerador inteligente y ahorra un 15% en tu compra. Mantén tus alimentos frescos y ahorra energía al mismo tiempo.',
    
    openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
    Store(
      name: 'ElectroBoutique',
      category: 'Electrónica',
      rating: 4.4,
      location: 'calle 106 #20-54',
      promotions:"Hasta 25% de Descuento en Hornos de Convección: Disfruta de la versatilidad de la cocción con nuestros hornos de convección y ahorra hasta un 25% en tu elección. Cocinar nunca ha sido tan fácil y asequible.",
    openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
    Store(
      name: 'SaborGourmet',
      category: 'Alimentos',
      rating: 4.1,
      location: 'calle 118 # 32-53',
       promotions: "Descuento del 15% en Productos Orgánicos: Si buscas una alimentación más saludable, aprovecha un 15% de descuento en todos nuestros productos orgánicos, desde cereales hasta lácteos.",
    
    openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
    Store(
      name: 'Mercado Fresco',
      category: 'Alimentos',
      rating: 4.7,
      location: 'calle 125 # 231-12',
      promotions: "Promoción de Carnes a la Parrilla: 20% de Descuento en Cortes Selectos: Prepárate para la parrilla este fin de semana con un 20% de descuento en cortes de carne selectos. ¡La barbacoa nunca ha sido tan sabrosa y económica!",
    openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
    Store(
      name: 'SuperAlimentos',
      category: 'Alimentos',
      rating: 4.6,
      location: 'calle 112 # 123-21',
       promotions:"Compra 2 y Lleva 1 Gratis en Productos de Desayuno: Abastece tu despensa de desayuno con nuestra oferta especial. Compra dos productos de desayuno y llévate el tercero gratis. Desde cereales hasta mermeladas, tenemos todo lo que necesitas.",
    openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
    Store(
      name: 'TechWorld',
      category: 'Electrónica',
      rating: 4.7,
      location: 'calle 107 # 32-54',
      promotions: "Oferta Especial del 30% en Paquetes de Electrodomésticos: Compra un paquete de electrodomésticos que incluye una lavadora, un refrigerador y un horno, y obtén un descuento especial del 30%. Renueva tu hogar con estilo y ahorro.",
       
    openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
    Store(
      name: 'Gucci',
      category: 'Moda',
      rating: 4.0,
      location: 'calle 115 # 23-46',
      promotions: "Oferta Exclusiva para Clientes: 25% de Descuento en Compras Superiores a 100: ¡Agradecemos tu lealtad! Realiza una compra de moda por un valor de 100 o más y obtén un 25% de descuento en toda tu compra. Solo para clientes registrados.",
      openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
     Store(
      name: 'Adidas',
      category: 'Deportes',
      rating: 4.7,
      location: 'calle 121 # 82-72',
      promotions:"Oferta Especial en Equipos de Fitness: 30% de Descuento en Máquinas y Accesorios: Ponte en forma en casa con un 30% de descuento en máquinas de ejercicio y accesorios de fitness. Haz ejercicio de manera efectiva y ahorra dinero al mismo tiempo.",
      openingHours:"cmd",
    ),
     Store(
      name: 'Nike',
      category: 'Deportes',
      rating: 4.6,
      location: 'calle 124 # 12-24',
      promotions:"Venta de Temporada de Deportes de Verano: Hasta 50% de Descuento: Prepárate para la temporada de deportes de verano con descuentos de hasta el 50% en una amplia selección de equipamiento deportivo, desde trajes de baño hasta bicicletas.",
    openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
     Store(
      name: 'Puma',
      category: 'Deportes',
      rating: 4.5,
      location: 'calle 116 # 32-09',
      promotions:"Descuento del 20% en Ropa Deportiva de Marca: Actualiza tu guardarropa deportivo con un 20% de descuento en ropa deportiva de marca. Desde camisetas hasta zapatillas, encuentra las mejores ofertas en moda deportiva.",
      openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
     Store(
      name: 'DecoVida',
      category: 'Hogar',
      rating: 4.5,
      location: 'calle 132 # 22-12',
      promotions: "Venta de Muebles de Temporada: Hasta 40% de Descuento: Renueva tu hogar con estilo y ahorra con descuentos de hasta el 40% en una amplia selección de muebles, desde sofás hasta mesas de comedor.",
      openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
     Store(
      name: 'Jamar',
      category: 'Hogar',
      rating: 4.8,
      location: 'calle 134 # 102-24',
      promotions: "Oferta en Electrodomésticos: 25% de Descuento en Línea Blanca: Actualiza tu cocina con un 25% de descuento en electrodomésticos de línea blanca, como refrigeradores, lavadoras y cocinas. Moderniza tu hogar y ahorra en energía.",
      openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
    ),
     Store(
      name: 'Hogar Ideal',
      category: 'Hogar',
      rating: 4.3,
      location: 'calle 112 # 23-40',
      promotions:"Promoción de Decoración de Interiores: Compra 2, Lleva 1 Gratis: Dale un toque fresco a tu hogar con nuestra promoción de decoración. Compra dos elementos decorativos y llévate el tercero gratis. Desde cuadros hasta almohadas, encuentra la inspiración para tu espacio.",
    openingHours: 
      'Lunes a Sábados: 10:00 AM - 7:00 PM Domingos: 11:00 AM - 5:00 PM',
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
  final String promotions; // Lista de promociones
  final String openingHours; // Lista de horarios de apertura

  Store({
    required this.name,
    required this.category,
    required this.rating,
    required this.location,
    required this.promotions,
    required this.openingHours,
    
  });
}