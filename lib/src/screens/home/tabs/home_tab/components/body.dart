
import 'package:comida_app/src/data/models/menuale.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/components/card.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/components/carrucer.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/components/catgbott.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/components/foryou.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/components/search_button.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/home_tab_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
                child: ListView(children: [
                  SizedBox(height: 4,),
                  SearchButton(),
                  SizedBox(height: 15,),
                  Carrucer(),
                  BottoMore(
                    title: "Ver Todas",
                    press: () {},
                  ),
                  //  Users(),
                  CategoriesMenu(),
                  Foryou(
                  ),
                  Container(
                    color: Colors.red,
                    child: 
                    Column(
                      children: [
                        Text(controller1.popularMenu.length.toString()),
                      ],
                    ),

                  ),
                  // SliverList(delegate: SliverChildBuilderDelegate(
                  //   (context, index){
                  //     return Card(imageUrl: imageUrl)

                  //   }
                  //  ),
                  // ),
                  Builder(builder: (context) {
                    final List<MenuAle> popularMenu =
                        context.select<HomeTabController, List<MenuAle>>(
                      (_) => _.popularMenu,
                    );
                    return HorizontalDishes(
                          dishes: popularMenu,
                          title: "Popular Menu",
                          onViewAll: () {},
                    );
                  })
                  // Builder(
                  //     builder: (context) {
                  //       final List<MenuAle> popularMenu = context.select<HomeTabController, List<MenuAle>>(
                  //         (_) => _.popularMenu,
                  //       );
                  //       return HorizontalDishes(
                          // dishes: popularMenu,
                          // title: "Popular Menu",
                          // onViewAll: () {},
                  //       );
                  //     },
                  //   ),
                ]),
              ),
            ],
        );
  }
}
