import 'package:comida_app/src/data/models/menuale.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';
import 'dish_item.dart';

class Cardf extends StatelessWidget {
  final List<MenuAle> dishes;
  final String title;
  final VoidCallback onViewAll;
  final MenuAle item;
  const Cardf({
    Key key,
    this.item,
    this.dishes,
    this.title,
    this.onViewAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 15),
      child: Stack(
        children: [
          Container(
            height: 195,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 0, left: 0, bottom: 50),
                  child: Container(
                    width: 240,
                    child: CupertinoButton(
                      child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                final item = dishes[index];
                return DishHomeItem(
                  key: UniqueKey(),
                  item: item,
                  isFirst: index == 0,
                );
              },
              itemCount: dishes.length,
            ),
                      onPressed: () {},
                    ),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
