
import 'package:comida_app/src/routers/routers.dart';
import 'package:comida_app/src/screens/SubCategoria/sub_categoria.dart';
import 'package:comida_app/src/screens/home/home_page.dart';
import 'package:comida_app/src/screens/login/login_screen.dart';
import 'package:flutter/material.dart';


abstract class Pages {
  static const String INITIAL = Routes.HOME;
 

  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.HOME: (_) => HomePage(),
    Routes.LOGIN: (_) => LoginScreen(),
    Routes.SubCategoria: (_) => SubCategoria()
  };
}