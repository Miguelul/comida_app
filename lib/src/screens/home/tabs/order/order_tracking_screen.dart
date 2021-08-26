import 'package:comida_app/src/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img/bg.png',
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 0.4,
            left: 26,
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 8),
                          blurRadius: 20,
                          color: AppColor.kTextGrey2,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 28,
                          child: Image.asset(
                            'assets/img/profile.png',
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Thomas Todkoro',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Send by ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        color: AppColor.kTextGrey1,
                                      ),
                                ),
                                Text(
                                  'Uber eat',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        SvgPicture.asset(
                          'assets/img/arrow.svg',
                          width: 12,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: -7,
                    child: Center(
                      child: ClipPath(
                        clipper: TriangleClipper(),
                        child: Container(
                          width: 24,
                          height: 8,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            width: 1,
            bottom: 64,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    24,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 20,
                      color: AppColor.kTextGrey2,
                    )
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 16.0,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'ORDER STATUS',
                            style: TextStyle(
                              color: AppColor.kTextGrey1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/img/call.svg',
                          width: 32,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset(
                          'assets/img/chat.svg',
                          width: 32,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: AppColor.kTextGrey3,
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  OrderCard(
                    imagePath: 'assets/img/food/tamago.png',
                    distance: '1.5 km',
                    time: '10 min',
                    title: '1  x  Fresh Tamagoyaki',
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  OrderCard(
                    imagePath: 'assets/img/food/okonomiyaki.png',
                    distance: '0.5 km',
                    time: '10 min',
                    title: '1  x  Okonomiyaki',
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  OrderCard(
                    imagePath: 'assets/img/food/sushi.png',
                    distance: '1.0 km',
                    time: '10 min',
                    title: '1  x  Sushite',
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: SvgPicture.asset(
                      'assets/img/back.svg',
                      width: 32,
                    ),
                  ),
                  Text(
                    'Order Tracking',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  const OrderCard({
    required this.imagePath,
    required this.title,
    required this.time,
    required this.distance,
  });

  final String imagePath;
  final String title;
  final String time;
  final String distance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                  child: SizedBox(
                    width: 94,
                    height: 56,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 32,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/img/time.svg',
                            width: 16,
                          ),
                          Text(
                            time,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset(
                            'assets/img/location.svg',
                            width: 16,
                          ),
                          Text(
                            distance,
                            style: Theme.of(context).textTheme.bodyText1,
                          )
                        ],
                      )
                    ],
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

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * 0.5, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
