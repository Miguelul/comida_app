
import 'package:comida_app/src/screens/home/tabs/home_tab/components/carrucer.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/components/catgbott.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/components/foryou.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/components/search_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../home_tab_controller.dart';
import 'appbar.dart';
import 'categories_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller1 = Provider.of<HomeTabController>(context);
    return Column(
          children: [
            Appbar1(),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                SearchButton(),
                SizedBox(
                  height: 15,
                ),
                Carrucer(),
                SizedBox(
                  height: 15,
                ),
                BottoMore(
                  title: "Ver Todas",
                  press: () {},
                ),
                //  Users(),
                 CategoriesMenu(category: controller1.popularMenu), 
                Foryou(),
              ])),
            ),
          ],
        );
  }
}
