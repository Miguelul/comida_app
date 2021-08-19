import 'package:comida_app/src/data/models/ProductItem.dart';
import 'package:comida_app/src/data/models/menuale.dart';
import 'package:comida_app/src/data/repositories/ProductoAleRep.dart';
import 'package:comida_app/src/helpers/get.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/home_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum HomeState { normal, cart }

class HomeControllerC extends ChangeNotifier {
  HomeState homeState = HomeState.normal;
  final ProductoRepository _productoRepository =
      Get.i.find<ProductoRepository>();

  List<MenuAle> _popularMenu = [];
  List<MenuAle> get popularMenu => _popularMenu;
  void afterFirstLayout() {
    _init();
  }

  void _init() async {
    _popularMenu = await _productoRepository.getMenuAle();
    notifyListeners();
  }

  List<ProductItem> cart = [];
  HomeTabController controller2;

  void changeHomeState(HomeState state) {
    homeState = state;
    notifyListeners();
  }

  void addProductToCart(MenuAle product) {
    for (ProductItem item in cart) {
      if (item.product.id == product.id) {
        item.increment();
        notifyListeners();
        return;
      }
    }
    cart.add(ProductItem(product: product));
    notifyListeners();
  }

  int totalProduct(BuildContext context) {
    final controller = Provider.of<HomeTabController>(context);
    int total = controller.popularMenu.length;
    return total;
  }

  int totalCartItems() => cart.fold(
      0, (previousValue, element) => previousValue + element.quantity);

  void deleteFavorite(ProductItem dish) {
    cart.remove(dish);
    notifyListeners();
  }
}
