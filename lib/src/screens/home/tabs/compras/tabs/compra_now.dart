import 'package:comida_app/src/screens/home/tabs/home_tab/home_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ComprasNow extends StatelessWidget {
  const ComprasNow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller1 = Provider.of<HomeTabController>(context);
    
    return Container(
      child: 
      Center(child: Text(controller1.popularMenu.length.toString()))
      ,
    );
  }
}