import 'package:comida_app/src/data/models/category.dart';
import 'package:comida_app/src/data/models/menuale.dart';
import 'package:comida_app/src/data/repositories/ProductoAleRep.dart';
import 'package:comida_app/src/data/repositories/categoryRepository.dart';
import 'package:comida_app/src/helpers/get.dart';
import 'package:flutter/widgets.dart';

class HomeTabController extends ChangeNotifier {
  final ProductoRepository? _productoRepository =
      Get.i.find<ProductoRepository>();

  final CategoryRepository? _categoryRepository =
      Get.i.find<CategoryRepository>();

  List<Category> _category = [];
  List<Category> get category => _category;

  List<MenuAle> _popularMenu = [];
  List<MenuAle> get popularMenu => _popularMenu;
   afterFirstLayout() {
    _init();
  }

  void _init() async {
    _popularMenu = await _productoRepository!.getMenuAle();
    _category = await _categoryRepository!.getCategory();
    notifyListeners();
  }
  
}
