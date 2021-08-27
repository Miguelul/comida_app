import 'package:comida_app/src/screens/home/tabs/home_tab/home_tab_controller.dart';
import 'package:flutter/material.dart';

import 'package:comida_app/src/controllers/home_controllerC.dart';
import 'package:comida_app/src/data/models/menuale.dart';
import 'package:comida_app/src/screens/deatils/details_screen.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import 'components/cart_details_view.dart';
import 'components/cart_short_view.dart';
import 'components/header.dart';
import 'components/product_card.dart';

// Today i will show you how to implement the animation
// So starting project comes with the UI
// Run the app

class SubCategoria extends StatelessWidget {
  final controller = HomeControllerC();
  final controller1 = HomeTabController();

  void _onVerticalGesture(DragUpdateDetails details) {
    if (details.primaryDelta < -0.7) {
      controller.changeHomeState(HomeState.cart);
    } else if (details.primaryDelta > 12) {
      controller.changeHomeState(HomeState.normal);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeTabController>(create: (_) {
      final controller = HomeTabController();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller.afterFirstLayout();
      });
      return controller;
    }, builder: (_, __) {
 
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          bottom: false,
          child: Container(
            color: Color(0xFFEAEAEA),
            child: AnimatedBuilder(
                animation: controller,
                builder: (context, _) {
                  return LayoutBuilder(
                    builder: (context, BoxConstraints constraints) {
                      return Stack(
                        children: [
                          AnimatedPositioned(
                            duration: panelTransition,
                            top: controller.homeState == HomeState.normal
                                ? headerHeight
                                : -(constraints.maxHeight -
                                    cartBarHeight * 2 -
                                    headerHeight),
                            left: 0,
                            right: 0,
                            height: constraints.maxHeight -
                                headerHeight -
                                cartBarHeight,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultPadding),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft:
                                      Radius.circular(defaultPadding * 1.5),
                                  bottomRight:
                                      Radius.circular(defaultPadding * 1.5),
                                ),
                              ),
                              child: GridView.builder(
                                  itemCount: controller.totalProduct(context),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 0.75,
                                    mainAxisSpacing: defaultPadding,
                                    crossAxisSpacing: defaultPadding,
                                  ),
                                  itemBuilder: (context, index) {
                                    return Builder(builder: (context) {
                                      final List<MenuAle> popularMenu =
                                          context.select<HomeTabController,
                                              List<MenuAle>>(
                                        (_) => _.popularMenu,
                                      );
                                      return 
                                      ChangeNotifierProvider<HomeControllerC>(
                                        create: (_) => HomeControllerC(),
                                        child:
                                      ProductCard(
                                        product: popularMenu[index],
                                        press: () {
                                          Navigator.push(
                                              context,
                                              PageRouteBuilder(
                                                transitionDuration:
                                                    const Duration(
                                                        milliseconds: 500),
                                                reverseTransitionDuration:
                                                    const Duration(
                                                        milliseconds: 500),
                                                pageBuilder: (context,
                                                        animation,
                                                        secondaryAnimation) =>
                                                    FadeTransition(
                                                  opacity: animation,
                                                  child: DetailsScreen(
                                                    product: popularMenu[index],
                                                    onProductAdd: () {
                                                      controller.addProductToCart(
                                                        popularMenu[index]
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ));
                                        },
                                      )
                                      );
                                    });
                                  }),
                            ),
                          ),
                          // Card Panel
                          AnimatedPositioned(
                            duration: panelTransition,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            height: controller.homeState == HomeState.normal
                                ? cartBarHeight
                                : (constraints.maxHeight - cartBarHeight),
                            child: GestureDetector(
                              onVerticalDragUpdate: _onVerticalGesture,
                              child: Container(
                                padding: const EdgeInsets.all(defaultPadding),
                                color: Color(0xFFEAEAEA),
                                alignment: Alignment.topLeft,
                                child: AnimatedSwitcher(
                                  duration: panelTransition,
                                  child: controller.homeState ==
                                          HomeState.normal
                                      ? CardShortView(controller: controller)
                                      : CartDetailsView(controller: controller),
                                ),
                              ),
                            ),
                          ),
                          // Header
                          AnimatedPositioned(
                            duration: panelTransition,
                            top: controller.homeState == HomeState.normal
                                ? 0
                                : -headerHeight,
                            right: 0,
                            left: 0,
                            height: headerHeight,
                            child: HomeHeader(),
                          ),
                        ],
                      );
                    },
                  );
                }),
          ),
        ),
      );
    });
  }
}
