import 'package:comida_app/src/controllers/home_controllerC.dart';
import 'package:flutter/material.dart';

import 'cart_detailsview_card.dart';

class CartDetailsView extends StatelessWidget {
  const CartDetailsView({Key? key, required this.controller}) : super(key: key);

  final HomeControllerC controller;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cart", style: Theme.of(context).textTheme.headline6),
          Expanded(
            child: ListView.builder(
                itemCount: controller.cart.length,
                itemBuilder: (context, index) {
                  return CartDetailsViewCard(productItem: controller.cart[index]);
                }),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Next - \$30   "+controller.cart.length.toString()),
            ),
          )
        ],
    );
  }
}
