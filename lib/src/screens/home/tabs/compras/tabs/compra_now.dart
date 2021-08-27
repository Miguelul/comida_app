
import 'package:comida_app/src/screens/home/tabs/home_tab/components/categories_menu.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/home_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ComprasNow extends StatelessWidget {
  const ComprasNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller1 = Provider.of<HomeTabController>(context);

    print(controller1.popularMenu.length);
    return ChangeNotifierProvider<HomeTabController>(
        create: (_) {
          final controller = HomeTabController();
          WidgetsBinding.instance!.addPostFrameCallback((_) {
            controller.afterFirstLayout();
          });
          return controller;
        },
        child: Container(
          child: Column(
            children: [
              Center(
                  child: Text(
                      "${controller1.popularMenu.length > 0 ? controller1.popularMenu.length : "hola"}")),
              CategoriesMenu(category: controller1.popularMenu),
            ],
          ),
        ));
  }
}
