import 'package:comida_app/src/components/fav_btn.dart';
import 'package:comida_app/src/components/price.dart';
import 'package:comida_app/src/data/models/menuale.dart';
import 'package:comida_app/src/screens/home/tabs/home_tab/home_tab_controller.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.press,
    this.totalProduc
  }) : super(key: key);

  final MenuAle product;
  final VoidCallback press;
  final totalProduc;
  final controller1 =HomeTabController;
  @override
  Widget build(BuildContext context) {
   
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: Color(0xFFF7F7F7),
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultPadding * 1.25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product.name!,
              child: Image.network(
                product.imagen!,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              product.name!,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              "Platillo",
              style: Theme.of(context).textTheme.caption,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Price(amount: product.price.toString()),
                FavBtn(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
