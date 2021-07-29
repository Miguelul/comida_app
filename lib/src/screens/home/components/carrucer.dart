import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../../../../constants.dart';


class Carrucer extends StatelessWidget {
  const Carrucer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 15),
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: false,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomRight,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            images: [
              ExactAssetImage("assets/images/img.png"),
              ExactAssetImage("assets/images/bottom_img_1.png"),
              ExactAssetImage("assets/images/img.png"),
              ExactAssetImage("assets/images/bottom_img_1.png"),
            ],
          ),
        ),
      ),
    );
  }
}

