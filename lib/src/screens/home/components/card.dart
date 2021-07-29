
import 'package:flutter/material.dart';
import '../../../../constants.dart';


class Cardf extends StatelessWidget {
  @required final String urlimg;
  
  const Cardf({
    this.urlimg,
    Key key,
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
             color: Colors.grey,
             borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
               Padding(
                padding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                child:
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(12)),
                    ),
              ),
              Spacer(),
              Padding(
              padding: EdgeInsets.only(top: 0,left: 0,bottom: 50),
              child: Container(
                width: 240,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),

                  ),
                  image: DecorationImage(
                    image: AssetImage(urlimg),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
