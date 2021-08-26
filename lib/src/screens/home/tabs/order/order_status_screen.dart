
import 'package:comida_app/src/routers/routes.dart';
import 'package:comida_app/src/theme/app_color.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'order_tracking_screen.dart';


class OrderStatusScreen extends StatelessWidget {
  const OrderStatusScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                            'Order Status',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          SizedBox(
                            width: 32,
                          )
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
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/img/tot.svg',
                            width: 48,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ORDER FROM',
                                  style: TextStyle(
                                    color: AppColor.kTextGrey1,
                                  ),
                                ),
                                Text(
                                  'Totsuki Elite',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
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
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    DottedLine(
                      dashColor: AppColor.kTextGrey1,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Text(
                        'ADD ADDRESS',
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
                      padding: EdgeInsets.only(
                        left: 8.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset(
                                'assets/img/checklistBlack.svg',
                                width: 24,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SvgPicture.asset(
                                'assets/img/progress.svg',
                                height: 24,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SvgPicture.asset(
                                'assets/img/checklistBlack.svg',
                                width: 24,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SvgPicture.asset(
                                'assets/img/progress.svg',
                                height: 24,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.kPrimaryLight,
                                ),
                              ),
                              SizedBox(
                                height: 64,
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.kPrimaryLight,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                StepsCard(
                                  time: '7:00',
                                  desc: 'Order Recieved',
                                  step: 'ORDER',
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                StepsCard(
                                  time: '7:03',
                                  desc: 'Your food is under cooking!',
                                  step: 'COOKING',
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                StepsCard(
                                  time: '7:10',
                                  desc: 'Your food is ready!',
                                  step: 'READY',
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                StepsCard(
                                  time: '7:10',
                                  desc: 'Your food is on the way, get now!',
                                  step: 'Delivery',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: GestureDetector(
                onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => OrderTrackingScreen())),
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
                                SvgPicture.asset(
                                  'assets/img/pin.svg',
                                  width: 24,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Text(
                                    'Order Tracking',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/img/arrow.svg',
                                  width: 16,
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
            ),
          ],
        ),
      ),
    );
  }
}

class StepsCard extends StatelessWidget {
  const StepsCard({
    required this.step,
    required this.desc,
    required this.time,
  });

  final String step;
  final String desc;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: EdgeInsets.only(
        bottom: 16,
        right: 8,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColor.kTextGrey3,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            step,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: AppColor.kTextGrey1,
                ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  desc,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  color: AppColor.kTextGrey1,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
