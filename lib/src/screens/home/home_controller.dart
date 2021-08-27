import 'package:comida_app/src/data/models/menuale.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class HomeController extends ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;

  Map<int, MenuAle> _favorites = {};
  Map<int, MenuAle> get favorites => _favorites;

  bool isFavorite(MenuAle product) => _favorites.containsKey(product.id);

  void Function()? onDispose;

  final TabController tabController = TabController(
<<<<<<< HEAD
    length: 3,
    vsync: NavigatorState(),
  );
=======
    length: 4,
    vsync: NavigatorState(),
  );

  void afterFirstLayout() {
    this.tabController.addListener(() {
      _currentPage = tabController.index;
      notifyListeners();
    });
  }

  void toggleFavorite(MenuAle dish) {
    Map<int, MenuAle> copy = Map<int, MenuAle>.from(_favorites);
    if (isFavorite(dish)) {
      copy.remove(dish.id);
    } else {
<<<<<<<< HEAD:lib/src/screens/home/home_controller.dart
      copy[int.parse(dish.id)] = dish;
========
      copy[int.parse(dish.id!)] = dish;
>>>>>>>> 7469b7d2258a0024951a334cc668187ee7ccf933:lib/src/screens/home/components/home_controller.dart
    }
    _favorites = copy;
    notifyListeners();
  }

  void deleteFavorite(MenuAle dish) {
    Map<int, MenuAle> copy = Map<int, MenuAle>.from(_favorites);
    if (isFavorite(dish)) {
      copy.remove(dish.id);
      _favorites = copy;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    this.tabController.dispose();
    if (this.onDispose != null) {
      this.onDispose!();
    }
    super.dispose();
  }
  
>>>>>>> 7469b7d2258a0024951a334cc668187ee7ccf933
}
