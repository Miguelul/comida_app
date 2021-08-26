import 'package:comida_app/src/data/models/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../theme/app_color.dart';
import 'checkout_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen();

  @override
  Widget build(BuildContext context) {
    final List<Order> orders = [
      Order(
        foods: [
          '2  x  Okonomiyaki',
          '1  x  Fresh Tamagoyaki',
        ],
        price: '16.00',
        shopName: 'Totsuki Elite',
        shopPic: 'assets/img/totsuki.svg',
        image: 'assets/img/food/okonomiyaki.png',
      ),
      Order(
        foods: [
          '1  x  Karage Balls',
        ],
        price: '3.66',
        shopName: 'Shokugeki',
        shopPic: 'assets/img/shoku.svg',
        image: 'assets/img/food/karageball.png',
      ),
      Order(
        foods: [
          '1  x  Sushite',
        ],
        price: '2.57',
        shopName: 'Megumi',
        shopPic: 'assets/img/megumi.svg',
        image: 'assets/img/food/sushi.png',
      ),
    ];

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Text(
                'Your order',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'READY TO CHECKOUT',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              CheckoutCard(),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'ORDER ON THE WAY',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
              ...List.generate(
                orders.length,
                (index) => OrderCard(
                  order: orders[index],
                  isLast: index == orders.length - 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  const OrderCard({
    this.isLast = false,
    required this.order,
  });

  final bool isLast;
  final Order order;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 24,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: isLast
              ? BorderSide.none
              : BorderSide(
                  color: AppColor.kTextGrey3,
                ),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 94,
              child: Image.asset(
                order.image,
              ),
            ),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(
                  order.foods.length,
                  (index) => Column(
                    children: [
                      Text(
                        order.foods[index],
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      order.shopPic,
                      width: 18,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        order.shopName,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '\$${order.price}',
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            'assets/img/arrow.svg',
            width: 16,
          ),
          SizedBox(
            width: 12,
          )
        ],
      ),
    );
  }
}

class CheckoutCard extends StatelessWidget {
  const CheckoutCard();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>  Navigator.push(context,MaterialPageRoute(builder: (context) => CheckoutScreen())),
      

      child: Container(
        width: double.infinity,
        height: 94,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: Container(
                height: 94,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.kTextGrey2,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'View all order',
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '\$17.66',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/img/arrow.svg',
                      width: 16,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              child: Container(
                height: 94,
                width: 94,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                  ),
                  color: AppColor.kPrimary,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/img/illu8.svg',
                    width: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
