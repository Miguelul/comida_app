import 'package:comida_app/src/data/models/food.dart';
import 'package:comida_app/src/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class FoodCard extends StatelessWidget {
  const FoodCard({
    required this.food,
    this.onTap,
  });

  final Food food;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 240,
        margin: EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 240,
              height: 130,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                ),
                child: Image.asset(
                  food.imgPath,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              food.title,
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              food.desc,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: AppColor.kTextGrey1,
                  ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/img/time.svg',
                        width: 16,
                      ),
                      Text(
                        food.duration,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/img/star.svg',
                        width: 16,
                      ),
                      Text(
                        food.rating,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/img/delivery.svg',
                        width: 16,
                      ),
                      Text(
                        food.delivery,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
