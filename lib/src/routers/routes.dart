import 'package:comida_app/src/screens/home/tabs/order/add_address_screen.dart';
import 'package:comida_app/src/screens/home/tabs/order/checkout_screen.dart';
import 'package:comida_app/src/screens/home/tabs/order/order_status_screen.dart';
import 'package:comida_app/src/screens/home/tabs/order/order_tracking_screen.dart';
import 'package:comida_app/src/screens/home/tabs/order/pay_screen.dart';
import 'package:comida_app/src/screens/home/tabs/order/payment_method_screen.dart';
import 'package:comida_app/src/screens/home/tabs/order/success_order_screen.dart';
import 'package:flutter/material.dart';


class RouteGenerator {
  static const String main = '/tab_screen';
  static const String changePw = '/change_pw_screen';
  static const String forgetPw = '/forget_pw_screen';
  static const String login = '/login_screen';
  static const String pwChanged = '/password_changed_screen';
  static const String tac = '/tac_screen';
  static const String onboarding = '/onboarding_screen';
  static const String splash = '/';
  static const String signup = '/signup_screen';
  static const String verification = '/verification_screen';
  static const String survey = '/survey_screen';
  static const String registered = '/registered_screen';
  static const String checkout = '/checkout_screen';
  static const String details = '/details_screen';
  static const String pay = '/pay_screen';
  static const String paymentMethod = '/payment_method_screen';
  static const String addAddress = '/add_address_screen';
  static const String successOrder = '/success_order_screen';
  static const String orderStatus = '/order_status_screen';
  static const String orderTracking = '/order_tracking_screen';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
      case checkout:
        return MaterialPageRoute(
          builder: (_) => const CheckoutScreen(),
        );
      case pay:
        return MaterialPageRoute(
          builder: (_) => const PayScreen(),
        );
      case paymentMethod:
        return MaterialPageRoute(
          builder: (_) => const PaymentMethodScreen(),
        );
      case addAddress:
        return MaterialPageRoute(
          builder: (_) => const AddAddressScreen(),
        );
      case successOrder:
        return MaterialPageRoute(
          builder: (_) => const SuccessOrderScreen(),
        );
      case orderStatus:
        return MaterialPageRoute(
          builder: (_) => const OrderStatusScreen(),
        );
      case orderTracking:
        return MaterialPageRoute(
          builder: (_) => const OrderTrackingScreen(),
        );
      default:
        throw RouteException('Route not found');
    }
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}
