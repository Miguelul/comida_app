import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

class Appbar1 extends StatelessWidget {
  const Appbar1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: headerHeight,
      color: kBackgroundColor,
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning!",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 15
                )
              ),
              Text(
                "Caesar Rincon",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
                )
              )
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage("assets/images/profile.png"),
          )
        ],
      ),
    );
  }
}