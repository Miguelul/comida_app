import 'package:comida_app/constants.dart';

import 'package:comida_app/src/data/models/menuale.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/components/card.dart';
import 'package:comida_app/src/screens/sub_categoria/main_grocery_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../home_tab_controller.dart';

class CategoriesMenu extends StatelessWidget {
  const CategoriesMenu({
    Key? key,
    required this.category,
  }) : super(key: key);

  final List<MenuAle> category;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeTabController>(
        create: (_) {
          final controller = HomeTabController();
          WidgetsBinding.instance!.addPostFrameCallback((_) {
            controller.afterFirstLayout();
          });
          return controller;
        },
        child: Container(
          height: 120,
          child: GridView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,

                 gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: defaultPadding,
                      crossAxisSpacing: defaultPadding,
                    ),
              // Builder(builder: (context) {
              // final List<MenuAle> popularMenu =
              //     context.select<HomeTabController, List<MenuAle>>(
              //   (_) => _.popularMenu,
              // );
              // return HorizontalDishes(
              //       dishes: popularMenu,
              //       title: "Popular Menu",
              //       onViewAll: () {},
              //             );
              //           }

              itemBuilder: (context, index) {
                final List<MenuAle> popularMenu =
                    context.select<HomeTabController, List<MenuAle>>(
                  (_) => _.popularMenu,
                );
                return HorizontalDishes(
                  dishes: popularMenu[index],
                  title: "Popular Menu",
                  onViewAll: () {},
                );
                // return
                // Text(category.length.toString());
              }),
        )
        );
  }
}

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    required this.category,
    required this.isFirst,
  });

  final MenuAle category;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 10,
        left: isFirst ? 17 : 5,
        bottom: 10,
        top: 5,
      ),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        child: Container(
          width: 55,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: kBackgroundColor, shape: BoxShape.circle),
                child: SvgPicture.asset(
                  category.imagen!,
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: 40,
                height: 30,
                child: Text(
                  category.name!,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainGroceryStoreApp()),
          );
        },
      ),
    );
  }
}
