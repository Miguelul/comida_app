import 'package:comida_app/src/data/models/menuale.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class ProductoProvider {
  Future<List<MenuAle>> getMenuAle() async {
    final jsonAsString =
        await rootBundle.loadString('assets/home/json/ProductoAl.json');
    final List list = jsonDecode(jsonAsString);
   
    List<MenuAle> dishes = [];
    for (final Map<String, dynamic> item in list) {
      final dish = MenuAle(
        id: item['id'],
        name: item['name'],
        imagen: item['imagen'],
        price: double.parse(
          item['price'].toString(),
        ),
        rate: double.parse(
          item['rate'].toString(),
        ),
      );
      dishes.add(dish);
    
    }
    return dishes;
  }
}
