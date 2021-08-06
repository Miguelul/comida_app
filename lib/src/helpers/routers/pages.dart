

import 'package:comida_app/src/helpers/routers/routers.dart';
import 'package:comida_app/src/screens/home/home_page.dart';
import 'package:flutter/material.dart';

abstract class Pages {
  static const String INITIAL = Routes.HOMEs;

  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.HOME: (_) => HomePage(),
 
  };
}