import 'package:comida_app/src/data/models/menuale.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home_controller.dart';
import 'components/card_item.dart';


class CardTab extends StatefulWidget {
  @override
  _CardTabState createState() => _CardTabState();
}

class _CardTabState extends State<CardTab> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final favorites = context.select<HomeController, Map<int, MenuAle>>((_) => _.favorites).values.toList();

    return ListView.builder(
      itemBuilder: (_, index) => FavoriteItem(
        dish: favorites[index],
      ),
      itemCount: favorites.length,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
