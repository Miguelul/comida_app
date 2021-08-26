import 'package:comida_app/src/components/home/custom_input_field.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../../theme/app_color.dart';


class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                            'Add new address',
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
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        'ADD ADDRESS',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: AppColor.kTextGrey1,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      CustomInputField(
                        labelText: 'NAME',
                        hintText: 'Enter your name',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      CustomInputField(
                        labelText: 'ADDRESS',
                        hintText: 'Enter your address',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ClipRRect(
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
                                          'Add pin point',
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
                      SizedBox(
                        height: 16,
                      ),
                      CustomInputField(
                        labelText: 'PHONE',
                        hintText: 'Enter phone number',
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'Done',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
