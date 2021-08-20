import 'package:comida_app/constants.dart';
import 'package:comida_app/src/helpers/dependency_injection.dart';
import 'package:comida_app/src/routers/pages.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/home_tab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  DependencyInjection.initialize();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
     // home: LoginScreen(),
        initialRoute: Pages.INITIAL,
        routes: Pages.routes,

    );
  }
}
