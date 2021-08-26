import 'package:comida_app/bloc/payment/payment_bloc.dart';
import 'package:comida_app/src/data/models/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../theme/app_color.dart';

final List<PaymentMethod> methods = [
  PaymentMethod(
    name: 'Pay cash on delivery',
    assetName: 'assets/img/cash_on_del.svg',
    fee: '0.00',
  ),
  PaymentMethod(
    name: 'Credit Card',
    assetName: 'assets/img/creditcard.svg',
    fee: '1.20',
  ),
  PaymentMethod(
    name: 'Paypal',
    assetName: 'assets/img/paypal.svg',
    fee: '0.99',
  ),
];

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentBloc(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
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
                      'Payment method',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/img/add_filled.svg',
                        width: 32,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 64,
              ),
              ...List.generate(
                methods.length,
                (index) => PaymentCard(
                  methods[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  const PaymentCard(this.model);

  final PaymentMethod model;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          margin: EdgeInsets.only(
            bottom: 16,
            left: 8,
            right: 8,
          ),
          padding: EdgeInsets.all(
            16,
          ),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                6,
              ),
              side: BorderSide(
                color: model == state.method
                    ? AppColor.kPrimary
                    : AppColor.kTextGrey3,
              ),
            ),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                model.assetName,
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
                      model.name,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Fee: ',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: AppColor.kTextGrey1,
                                  ),
                        ),
                        Text(
                          '\$${model.fee}',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => BlocProvider.of<PaymentBloc>(context).add(
                  SetPayment(model),
                ),
                child: BlocBuilder<PaymentBloc, PaymentState>(
                  builder: (context, state) {
                    return model == state.method
                        ? SvgPicture.asset('assets/img/checklist.svg')
                        : SvgPicture.asset('assets/img/uncheck.svg');
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
