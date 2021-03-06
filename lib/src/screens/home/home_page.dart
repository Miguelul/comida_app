
import 'package:comida_app/src/screens/home/components/home_bottom_bar.dart';
import 'package:comida_app/src/screens/home/home_controller.dart';
import 'package:comida_app/src/screens/home/tabs/compras/compras.dart';
import 'package:comida_app/src/screens/home/tabs/order/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'tabs/home_tab/home_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeController>(
      create: (_) => HomeController(),
      builder: (_, __) {
        final controller = Provider.of<HomeController>(_, listen: false);
        return Scaffold(
          bottomNavigationBar: HomeBottomBar(),
          body: SafeArea(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                HomeScreen(),
<<<<<<< HEAD
                OrderScreen(),
                Compras(),
=======
                SubCategoria(),
                Compras(),
                CardTab(),
>>>>>>> 7469b7d2258a0024951a334cc668187ee7ccf933
              ],
            ),
          ),
        );
      },
    );
  }
}
