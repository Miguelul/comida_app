
import 'package:comida_app/src/routers/routers.dart';
import 'package:comida_app/src/screens/forgot_password/forgot_password_page.dart';
import 'package:comida_app/src/screens/home/home_page.dart';
import 'package:comida_app/src/screens/login/login_page.dart';
import 'package:comida_app/src/screens/onboard/onboard_page.dart';
import 'package:comida_app/src/screens/register/register_page.dart';
import 'package:comida_app/src/screens/sub_categoria/main_grocery_store.dart';
import 'package:comida_app/src/screens/welcome/welcome_page.dart';
import 'package:flutter/material.dart';


abstract class Pages {
  static const String INITIAL = Routes.ONBOARD;
 

  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.HOME: (_) => HomePage(),
    Routes.LOGIN: (_) => LoginPage(),
    Routes.REGISTER: (_) => RegisterPage(),
    Routes.FORGOT_PASSWORD: (_) => ForgotPasswordPage(),
    Routes.SubCategoria: (_) => MainGroceryStoreApp(),
    Routes.ONBOARD: (_) => OnboardPage(),
    Routes.WELCOME: (_) => WelcomePage(),
  };
}