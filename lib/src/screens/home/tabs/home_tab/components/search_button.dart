import 'package:comida_app/constants.dart';
import 'package:comida_app/src/data/models/menuale.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
    this.item ,
    this.height = 20
  }) : super(key: key);

  final MenuAle? item;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: CupertinoButton(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    width: 200,
                    height: height,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Find your food",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              onPressed: (){},
            ),
          ),
          SizedBox(width: 15,),
         CupertinoButton(
           padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
                child: SvgPicture.asset(
                  "assets/icons/icon_3.svg",
                  height: height,
                ),
                onPressed: (){},
              ),
        ],
      ),
    );
  }
}
