import 'package:comida_app/src/data/models/menuale.dart';

class ProductItem {
  int quantity;
  final MenuAle product;

  ProductItem({this.quantity = 1, required this.product});

  void increment() {
    quantity++;
  }

  // void add() {}

  // void substract() {}
}
