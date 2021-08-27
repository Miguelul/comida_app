
import 'package:comida_app/src/screens/home/tabs/home_tab/components/body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_tab_controller.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ChangeNotifierProvider<HomeTabController>(
        create: (_) {
          final controller = HomeTabController();
          WidgetsBinding.instance!.addPostFrameCallback((_) {
            controller.afterFirstLayout();
          });
          return controller;
        },
        child: Body()
        );
  }

  @override
  bool get wantKeepAlive => true;
}
