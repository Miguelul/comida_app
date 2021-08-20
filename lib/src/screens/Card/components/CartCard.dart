import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: 
        BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Row(
          children: [
            SizedBox(
              width: 70,
              child: AspectRatio(
                aspectRatio: 0.88,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                      ),
                    child: Image.asset("assets/images/logo.png"),
                  ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Es el log jhdfdgghhjh",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text.rich(
                    TextSpan(
                      text: "Hola",
                      children: [
                        TextSpan(
                          text: " x8"
                        )
                      ]
                    )
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
