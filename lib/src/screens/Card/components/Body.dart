
import 'package:comida_app/src/screens/Card/components/CartCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyCard extends StatefulWidget {
  @override
  _BodyCardState createState() => _BodyCardState();
}

class _BodyCardState extends State<BodyCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context,int index)=>
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key("kjkjkjkjkjkjkj"),
              direction: DismissDirection.endToStart,
              background: 
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFFFE6E6),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: SvgPicture.asset("assets/icons/user-icon.svg",color: Colors.black),
                      )
                    ],
                  ),
                ),
              child: CartCard(),
            ),
          ), 
      ),
    );
  }
}
