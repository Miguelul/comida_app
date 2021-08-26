import 'package:comida_app/bloc/checkoutBloc/checkout_bloc.dart';
import 'package:comida_app/src/data/models/checkout.dart';
import 'package:comida_app/src/screens/home/tabs/order/pay_screen.dart';
import 'package:comida_app/src/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';


class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen();

  @override
  Widget build(BuildContext context) {
    final List<Checkout> checkouts = [
      Checkout(
        shopName: 'Totsuki Elite',
        shopPic: 'assets/img/totsuki.svg',
        image: 'assets/img/food/tamago.png',
        price: 6.00,
        foods: ['Fresh Tamagoyaki'],
        time: '10',
      ),
      Checkout(
        shopName: 'Shokugeki',
        shopPic: 'assets/img/shoku.svg',
        image: 'assets/img/food/okonomiyaki.png',
        price: 3.66,
        foods: ['Okanomiyaki'],
        time: '7',
      ),
      Checkout(
        shopName: 'Megumi',
        shopPic: 'assets/img/megumi.svg',
        image: 'assets/img/food/sushi.png',
        price: 3.66,
        foods: ['Sushite'],
        time: '3',
      ),
    ];
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: SvgPicture.asset(
                      'assets/img/back.svg',
                      width: 32,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Checkout order',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/img/add_filled.svg',
                      width: 32,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    checkouts.length,
                    (index) => BlocProvider(
                      create: (context) => CheckoutBloc(),
                      child: CheckoutCard(checkouts[index]),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 50,
                    offset: Offset(0, -8),
                    color: AppColor.kTextGrey3,
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Total order:',
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    color: AppColor.kTextGrey1,
                                  ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              6,
                            ),
                          ),
                          color: AppColor.kPrimaryLight,
                        ),
                        child: Text(
                          'Free delivery',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      Text(
                        '\$17.66',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                      textStyle: MaterialStateProperty.all(
                        Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    onPressed: () =>
                        Navigator.push(context,MaterialPageRoute(builder: (context) => PayScreen())),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Place order',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(
                              4,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '4',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CheckoutCard extends StatelessWidget {
  const CheckoutCard(this.checkout);

  final Checkout checkout;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        8,
        16,
        8,
        32,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColor.kTextGrey3,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: 94,
              child: Image.asset(
                checkout.image,
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
                Row(
                  children: [
                    BlocBuilder<CheckoutBloc, CheckoutState>(
                      builder: (context, state) {
                        return Expanded(
                          child: Text(
                            '${state.count}  x  ${checkout.foods[0]}',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        );
                      },
                    ),
                    BlocBuilder<CheckoutBloc, CheckoutState>(
                      builder: (context, state) {
                        return Text(
                          '\$${(state.count * checkout.price).toStringAsFixed(2)}',
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    color: AppColor.kTextGrey1,
                                  ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      checkout.shopPic,
                      width: 18,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        checkout.shopName,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/img/time.svg',
                            width: 16,
                          ),
                          Text(
                            '${checkout.time} min',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () =>
                                BlocProvider.of<CheckoutBloc>(context).add(
                              Minus(),
                            ),
                            child: SvgPicture.asset(
                              'assets/img/minus.svg',
                              width: 24,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            child: BlocBuilder<CheckoutBloc, CheckoutState>(
                              builder: (context, state) {
                                return Text(
                                  ' ${state.count} ',
                                  style: Theme.of(context).textTheme.headline6,
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          GestureDetector(
                            onTap: () =>
                                BlocProvider.of<CheckoutBloc>(context).add(
                              Add(),
                            ),
                            child: SvgPicture.asset(
                              'assets/img/add.svg',
                              width: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/img/delete.svg',
                            width: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
