import 'package:comida_app/src/data/models/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../home_tab_controller.dart';


class CategoriesMenu extends StatelessWidget {
  const CategoriesMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeTabController>(context, listen: false);
    return Container(
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          controller.categories.length,
          (index) {
            final category = controller.categories[index];
            return CategoryButton(
              category: category,
              isFirst: index == 0,
            );
          },
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    
    @required this.category,
    @required this.isFirst,
  }) ;

  final Category category;
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
          width: 	70,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
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
              Expanded(
                child:
                 Container(
                   width: 50,
                   decoration: BoxDecoration(
                     color: Colors.red,
                     shape: BoxShape.circle
                   ),
                  child: SvgPicture.asset(
                    category.iconPath,
                  ), 
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  category.label,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
