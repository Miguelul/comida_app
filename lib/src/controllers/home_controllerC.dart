import 'package:comida_app/src/data/models/menuale.dart';
import 'package:comida_app/src/data/repositories/ProductoAleRep.dart';
import 'package:comida_app/src/helpers/get.dart';

import 'package:flutter/material.dart';


enum GroceryState {
  body,
  normal,
  details,
  cart,
}

class GroceryStoreBLoC with ChangeNotifier {
    final ProductoRepository? _productoRepository =
      Get.i.find<ProductoRepository>();

  List<MenuAle> _popularMenu = [];
  List<MenuAle> get popularMenu => _popularMenu;
  void afterFirstLayout() {
    _init();
  }
  void _init() async {
    _popularMenu = await _productoRepository!.getMenuAle();
    notifyListeners();
  }
  
  GroceryState groceryState = GroceryState.normal;

  List<GroceryProductItem> cart = [];
  
   void changeTobody() {
    groceryState = GroceryState.body;
    notifyListeners();
  }
  void changeToNormal() {
    groceryState = GroceryState.normal;
    notifyListeners();
  }

  void changeToCart() {
    groceryState = GroceryState.cart;
    notifyListeners();
  }

  void changeToDetails() {
    groceryState = GroceryState.details;
    notifyListeners();
  }

  void deleteProduct(GroceryProductItem productItem) {
    cart.remove(productItem);
    notifyListeners();
  }

  void addProduct(MenuAle product, int quantity) {
    for (GroceryProductItem item in cart) {
      if (item.product.name == product.name) {
        item.increment(quantity);
        notifyListeners();
        return;
      }
    }
    cart.add(GroceryProductItem(product: product, quantity: quantity));
    notifyListeners();
  }

  int totalCartElements() => cart.fold<int>(
        0,
        (previousValue, element) => previousValue + element.quantity,
      );

  double totalPriceElements() => cart.fold<double>(
        0.0,
        (previousValue, element) => previousValue + (element.quantity * element.product.price),
      );
}

class GroceryProductItem {
  GroceryProductItem({this.quantity = 1, required this.product});
  int quantity;
  final MenuAle product;

  void increment(int newQuantity) {
    quantity += newQuantity;
  }
}




// //  int totalProduct(BuildContext context) {
// //     final controller = Provider.of<HomeTabController>(context);
// //     int total = controller.popularMenu.length;
// //     return total;
// //   }














// enum HomeState { normal, cart }

// class HomeControllerC extends ChangeNotifier {
//   HomeState homeState = HomeState.normal;
//   final ProductoRepository? _productoRepository =
//       Get.i.find<ProductoRepository>();

//   Map<int, MenuAle> _carts = {};
//   Map<int, MenuAle> get carts => _carts;
// List<MenuAle> _popularMenu = [];
//   List<MenuAle> get popularMenu => _popularMenu;
//   void afterFirstLayout() {
//     _init();
//   }

//   void _init() async {
//     _popularMenu = await _productoRepository!.getMenuAle();
//     notifyListeners();
//   }

//   List<ProductItem> cart = [];
//   HomeTabController? controller2;

//   void changeHomeState(HomeState state) {
//     homeState = state;
//     notifyListeners();
//   }

//   void addProductToCart(MenuAle product) {
//     for (ProductItem item in cart) {
//       if (item.product.id == product.id) {
//         item.increment();
//         notifyListeners();
//         return;
//       }
//     }
//     cart.add(ProductItem(product: product));
//     notifyListeners();
//   }

//   int totalProduct(BuildContext context) {
//     final controller = Provider.of<HomeTabController>(context);
//     int total = controller.popularMenu.length;
//     return total;
//   }

//   int totalCartItems() => cart.fold(
//       0, (previousValue, element) => previousValue + element.quantity);

//   void deleteFavorite(ProductItem dish) {
//     cart.remove(dish);
//       Map<int, MenuAle> copy = Map<int, MenuAle>.from(_carts);
//       if (copy.containsKey(dish.product.id)) {
//         copy.remove(dish.product.id);
//         _carts = copy;
//         notifyListeners();
//       }
//     notifyListeners();
//   }
// }

// class ProductItem {
//   ProductItem({this.quantity = 1, required this.product});
//   int quantity;
//   final MenuAle product;

//   increment() {
//     quantity++;
//   }

//   // void add() {}

//   // void substract() {}
// }



