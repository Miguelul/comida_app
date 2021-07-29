import 'package:comida_app/src/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../constants.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
     elevation: 0,
     leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
     ),
     actions: [
       IconButton(
         icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
          onPressed: (){},
       ),
       IconButton(
         icon: SvgPicture.asset("assets/icons/user-icon.svg"),
          onPressed: (){},
       ), 
       SizedBox(width: kDefaultPadding /2)
     ],
    );
  }
}