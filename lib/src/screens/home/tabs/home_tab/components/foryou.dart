import 'package:flutter/material.dart';
import '../../../../../../constants.dart';



class Foryou extends StatelessWidget {
  const Foryou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:kDefaultPadding, vertical: 15),
      child: Container(
        height: 100,
        
           decoration: BoxDecoration(
            color: kPrimaryColor,
           
                 gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      kPrimaryColor,
                      Colors.blueGrey,
                    ],
                 ),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white24,
              width: 1,
            ),
            
           
          ),
      ),
    );
  }
}
