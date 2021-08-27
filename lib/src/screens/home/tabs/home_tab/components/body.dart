
<<<<<<< HEAD
=======
import 'package:comida_app/src/data/models/menuale.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/components/card.dart';
>>>>>>> 7469b7d2258a0024951a334cc668187ee7ccf933
import 'package:comida_app/src/screens/home/tabs/home_tab/components/carrucer.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/components/catgbott.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/components/foryou.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/components/search_button.dart';
<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../home_tab_controller.dart';
=======
import 'package:comida_app/src/screens/home/tabs/home_tab/home_tab_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
>>>>>>> 7469b7d2258a0024951a334cc668187ee7ccf933
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
