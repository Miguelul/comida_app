import 'package:flutter/material.dart';
import 'package:comida_app/constants.dart';

class BottoMore extends StatelessWidget {
  const BottoMore({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Container(
        color: Colors.white24,
        height: 40,
        width: double.infinity,
        child: Row(
          children: [
            Categoriatext(
              text: "Producto",
            ),
            Spacer(),
            FlatButton(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: kPrimaryColor,
              onPressed:press,
              child: Text(title	, style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}

class Categoriatext extends StatelessWidget {
  const Categoriatext({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
