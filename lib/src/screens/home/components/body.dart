
import 'package:comida_app/src/screens/home/components/card.dart';
import 'package:comida_app/src/screens/home/components/carrucer.dart';
import 'package:comida_app/src/screens/home/components/catgbott.dart';
import 'package:comida_app/src/screens/home/components/foryou.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:comida_app/src/screens/home/components/home_tab_controller.dart';
import 'categories_menu.dart';
import 'home_tab_controller.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeTabController>(
      create: (_){
            final controller = HomeTabController();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          controller.afterFirstLayout();
         });
           return controller;
      },
    child: ListView(children: [
    
      Carrucer(),
      BottoMore(
        title: "Ver Todas",
        press: () {},
      ),
      //  Users(),
      CategoriesMenu(),
      Foryou(),
      // SliverList(delegate: SliverChildBuilderDelegate(
      //   (context, index){
      //     return Card(imageUrl: imageUrl)

      //   }
      //  ),
      // ),
     Cardf(),
    ]),
    );
  }
}
