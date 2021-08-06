import 'package:comida_app/src/data/models/category.dart';
import 'package:comida_app/src/data/models/menuale.dart';
import 'package:comida_app/src/data/repositories/ProductoAleRep.dart';
import 'package:comida_app/src/helpers/get.dart';
import 'package:flutter/widgets.dart';


class HomeTabController extends ChangeNotifier {
  final ProductoRepository _productoRepository =
      Get.i.find<ProductoRepository>();

   final List<Category> categories = [
    Category(
      iconPath: "assets/icons/flower.svg",
      label: "Breakfast",
    ),
    Category(
      iconPath: "assets/icons/flower.svg",
      label: "Fast food",
    ),
    Category(
      iconPath: "assets/icons/flower.svg",
      label: "Dinner",
    ),
    Category(
      iconPath: "assets/icons/flower.svg",
      label: "Desserts",
    ),
  ];

 List<MenuAle> _popularMenu = [];
  List<MenuAle> get popularMenu => _popularMenu;
  void afterFirstLayout() {
    _init();
  }

  void _init() async{
  _popularMenu =await _productoRepository.getMenuAle();
  notifyListeners();
  }
}
