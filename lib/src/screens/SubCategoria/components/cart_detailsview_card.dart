

import 'package:comida_app/src/components/price.dart';
import 'package:comida_app/src/controllers/home_controllerC.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../../constants.dart';

class CartDetailsViewCard extends StatelessWidget {
  const CartDetailsViewCard({
    Key? key,
    required this.productItem,
  }) : super(key: key);

  final ProductItem productItem;

  @override
  Widget build(BuildContext context) {
    _deleteItem() {
      final controller = context.read<HomeControllerC>();
      return controller.deleteFavorite(productItem);
    }

    return Slidable(
        actionPane: SlidableDrawerActionPane(),
        secondaryActions: [
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10).copyWith(bottom: 5),
              child: CupertinoButton(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.red),
                    child: Icon(Icons.delete),
                  ),
                  onPressed: () {
                    _deleteItem();
                  })),
        ],
        child: Container(
          color: Colors.red,
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: defaultPadding / 2),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(productItem.product.imagen!),
            ),
            title: Text(
              productItem.product.name!,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            trailing: FittedBox(
              child: Row(
                children: [
                  Price(amount: productItem.product.price.toString()),
                  Text(
                    "  x ${productItem.quantity}",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        _deleteItem();
                      })
                ],
              ),
            ),
          ),
        ));
  }
}
