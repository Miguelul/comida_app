import 'package:comida_app/src/screens/home/tabs/home_tab/home_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tabs/compra_now.dart';
import 'tabs/compra_reservas.dart';

class Compras extends StatefulWidget {
  _ComprasState createState() => _ComprasState();
}

class _ComprasState extends State<Compras> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
    void initState() {
      super.initState();
      _controller = TabController(length: 2, vsync: this);
    }
  
  @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeTabController>(
        create: (_) {
          final controller = HomeTabController();
          WidgetsBinding.instance.addPostFrameCallback((_) {
            controller.afterFirstLayout();
          });
          return controller;
        },child:
 Scaffold(
        appBar: AppBar(
          title: Text('Compras'),
          bottom: getTabBar(),
        ),
        body: getTabBarView(
          <Widget>[
            ComprasNow(),
            ComprasReservas()
          ]
        ),
    ));
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(
          icon: Icon(Icons.looks_one),
        ),
        Tab(
          icon: Icon(Icons.looks_two),
        ),
      ],
      controller: _controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      children: tabs,
      controller: _controller,
    );
  }

}