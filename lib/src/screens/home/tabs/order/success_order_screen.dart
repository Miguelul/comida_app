import 'package:comida_app/src/routers/routes.dart';
import 'package:comida_app/src/theme/app_color.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'order_status_screen.dart';

class SuccessOrderScreen extends StatelessWidget {
  const SuccessOrderScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Spacer(),
                  SizedBox(
                    width: 254,
                    child: Text(
                      'Yeay! Your order is on the way',
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SvgPicture.asset(
                    'assets/img/illu2.svg',
                    width: 1 - 16,
                  ),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextButton(
                      onPressed: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              RouteGenerator.main, (route) => false),
                      child: Text(
                        'Back to home',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: AppColor.kTextGrey1,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 3,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          const StadiumBorder(),
                        ),
                      ),
                      onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => OrderStatusScreen())),
                      child: Text('Track your order'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
