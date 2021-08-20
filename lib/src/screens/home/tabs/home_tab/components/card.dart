import 'package:comida_app/src/data/models/menuale.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../constants.dart';

class HorizontalDishes extends StatelessWidget {
  final MenuAle dishes;
  final String title;
  final VoidCallback? onViewAll;
  const HorizontalDishes({
    Key? key,
    required this.dishes,
    required this.title,
    this.onViewAll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 15),
      child: Stack(
        children: [
          Container(
            height: 195,
            decoration: BoxDecoration(

                color: Colors.grey, borderRadius: BorderRadius.circular(20)
                ),
            
          ),
          Positioned(child: 
           Image.network(dishes.imagen!),
          ),
          Positioned(child: 
          Column(
            children: [
              Text(dishes.name!),
              Text(dishes.price.toString()),
      
            ],
          )
          )
        ],
      ),
    );
  }
}

