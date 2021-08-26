import 'package:comida_app/src/data/models/category.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CategoryProvider {
  final String postsURL = "https://comidaapi.azurewebsites.net/api/category";

  Future<List<Category>> getCategory() async {
    final client = new http.Client();
    final res = await client.get(Uri.parse(postsURL));

    print(res);
    print("Conectado al servidor");

    if (res.statusCode == 200) {
      final List list = jsonDecode(res.body);
      print(list);
      List<Category> dishes = [];
      for (final Map<String, dynamic> item in list) {
        final dish = Category(
          id: item['_id'],
          name: item['name'],
          imagenes: item['imagen'],
        );

        dishes.add(dish);
      }

      return dishes;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
