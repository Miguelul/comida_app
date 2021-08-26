import 'package:comida_app/src/data/models/menuale.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductoProvider {
  final String postsURL = "https://comidaapi.azurewebsites.net/api/platos";

  Future<List<MenuAle>> getMenuAle() async {
    final client = new http.Client();
    final res = await client.get(Uri.parse(postsURL));

    print(res);
    print("Conectado al servidor");

    if (res.statusCode == 200) {
      final List list = jsonDecode(res.body);
      print(list);
      List<MenuAle> dishes = [];
      for (final Map<String, dynamic> item in list) {
        final dish = MenuAle(
          id: item['_id'],
          name: item['name'],
          imagen: item['imagen'],
          price: double.parse(
            item['price'].toString(),
          ),
          rate: double.parse(
            item['rate'].toString(),
          ),
          category: item['category'],
          // description: item['description'],
        );

        dishes.add(dish);
      }

      return dishes;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
