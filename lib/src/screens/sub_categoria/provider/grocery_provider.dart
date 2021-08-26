
import 'package:comida_app/src/screens/sub_categoria/bloc/grocery_store_bloc.dart';
import 'package:flutter/material.dart';

class GroceryProvider extends InheritedWidget {
  final GroceryStoreBLoC bloc;
  final Widget child;

  GroceryProvider({
    required this.bloc,
    required this.child,
  }) : super(child: child);

  static GroceryProvider? of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<GroceryProvider>();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}
