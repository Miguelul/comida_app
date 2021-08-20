
import 'package:comida_app/constants.dart';
import 'package:comida_app/src/screens/home/home_controller.dart';
import 'package:comida_app/src/screens/home/components/home_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';



class HomeBottomBar extends StatelessWidget {
  HomeBottomBar({Key? key}) : super(key: key);

  final List<_BottomBarItem> _items = [
    _BottomBarItem(
      icon: 'assets/icons/icons8-home.svg',
      label: 'Home',
    ),
    _BottomBarItem(
      icon: 'assets/icons/icons8-briefcase.svg',
      label: 'Favorites',
    ),
    _BottomBarItem(
      icon: 'assets/icons/back_arrow.svg',
      label: 'Notifications',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context, listen: false);
    final int currentPage = context.select<HomeController, int>((_) => _.currentPage);
    return Container(
      height: 60,
    
      child: SafeArea(
        top: false,
        child: TabBar(
          controller: controller.tabController,
          indicator: HomeTabBarIndicator(),
          tabs: List.generate(
            _items.length,
            (index) {
              final item = _items[index];
              return BottomBarTab(
                item: item,
                isActive: currentPage == index,
              );
            },
          ),
        ),
      ),
    );
  }
}
class BottomBarTab extends StatelessWidget {
  const BottomBarTab({
    Key? key,
    required this.item,
    required this.isActive,
  }) : super(key: key);

  final _BottomBarItem item;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final Color color = this.isActive ? kPrimaryColor : Colors.black;
    return Tab(
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          item.icon,
          color: color,
        ),
      ),
    );
  }
}

class _BottomBarItem {
  final String icon, label;

  _BottomBarItem({
    required this.icon,
    required this.label,
  });
}

