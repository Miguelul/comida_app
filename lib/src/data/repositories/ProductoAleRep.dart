import 'package:comida_app/src/data/models/menuale.dart';

abstract class ProductoRepository{
  Future<List<MenuAle>> getMenuAle();
}