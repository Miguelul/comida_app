import 'package:comida_app/src/data/models/menuale.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class HomeController extends ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;

  Map<int, MenuAle> _favorites = {};
  Map<int, MenuAle> get favorites => _favorites;

  bool isFavorite(MenuAle dish) => _favorites.containsKey(dish.id);

  void Function() onDispose;

  final TabController tabController = TabController(
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
      copy[dish.id] = dish;
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
      this.onDispose();
    }
    super.dispose();
  }
  
}
