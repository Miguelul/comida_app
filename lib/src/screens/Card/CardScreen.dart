
import 'package:comida_app/src/screens/Card/components/Body.dart';
import 'package:comida_app/src/screens/Card/components/NavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/iconsback_arrow.svg"), 
          onPressed: () {},
     ),
        title: Center(
          child: Column(
            children: [
              Text("Hola",
              style: TextStyle(color: Colors.black,fontSize: 20),
              ),
              Text("Que pasa",
              style: TextStyle(color: Colors.black45, fontSize: 14),
              )
            ],
          ),
        ),
      ),
      body: BodyCard(),
      bottomNavigationBar: CardNavigationBar(),
    );
  }
}
