
import 'package:comida_app/src/screens/home/tabs/order/payment_method_screen.dart';
import 'package:comida_app/src/screens/home/tabs/order/success_order_screen.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../theme/app_color.dart';
import 'add_address_screen.dart';

class PayScreen extends StatelessWidget {
  const PayScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
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
                            'Checkout order',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Text(
                        'SELECT ADDRESS',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.kTextGrey1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => AddAddressScreen())),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Farhan Fauzan',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '4536 Northwest Boulevard, NJ',
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(
                                  6,
                                ),
                              ),
                              child: Text(
                                'Home',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SvgPicture.asset(
                              'assets/img/kebabmenu.svg',
                              width: 24,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          6,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 72,
                          decoration: BoxDecoration(
                            color: AppColor.kPrimaryLight,
                            borderRadius: BorderRadius.circular(
                              6,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: -50,
                                top: -30,
                                child: Container(
                                  width: 231,
                                  height: 231,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColor.kPrimary.withOpacity(0.1),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 24.0,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Cashback 50% Black Friday',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 80,
                                        height: 24,
                                        child: Stack(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/img/coupon.svg',
                                            ),
                                            Center(
                                              child: Text(
                                                '2 Coupon',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => PaymentMethodScreen())),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/img/cash.svg',
                              width: 32,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Text(
                                'Pay Cash',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Text(
                              'Fee: ',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: AppColor.kTextGrey1,
                                  ),
                            ),
                            Text(
                              '\$0.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            SvgPicture.asset(
                              'assets/img/arrow.svg',
                              width: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    DottedLine(
                      dashColor: AppColor.kTextGrey1,
                      lineThickness: 0.5,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'ORDER ID',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.kTextGrey1,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Desc(
                            title: 'Order Id',
                            info: 'FDS-7850-37676-CDXX',
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Desc(
                            title: 'Order date',
                            info: 'Today, 08:00',
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 64,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'ORDER DETAILS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.kTextGrey1,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Desc(
                            title: 'Okonomiyaki',
                            info: 'x  2',
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Desc(
                            title: 'Fresh Tamagoyaki',
                            info: 'x  1',
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Desc(
                            title: 'Sushite',
                            info: 'x  1',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(
                16,
                16,
                16,
                40,
              ),
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
                    onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => SuccessOrderScreen())),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pay now',
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

class Desc extends StatelessWidget {
  const Desc({
    required this.title,
    required this.info,
  });

  final String title;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(
          info,
          style: Theme.of(context).textTheme.headline6,
        )
      ],
    );
  }
}
