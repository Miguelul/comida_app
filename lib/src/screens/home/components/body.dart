
import 'package:comida_app/src/screens/home/components/card.dart';
import 'package:comida_app/src/screens/home/components/carrucer.dart';
import 'package:comida_app/src/screens/home/components/catgbott.dart';
import 'package:comida_app/src/screens/home/components/foryou.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
   
          Carrucer(),
          BottoMore(
            title: "More",
            press: () {},
          ),
        //  Users(),
          Container(
            height: 70,
            width: 300,
            color: Colors.black,
       
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  categoria(),
                  categoria(),
                  categoria(),
                  categoria(),
                  categoria(),
              ],
              ),
            
          ),
          Foryou(),
          // SliverList(delegate: SliverChildBuilderDelegate(
          //   (context, index){
          //     return Card(imageUrl: imageUrl)
              
          //   }
          //  ),
          // ),
          Cardf(
            urlimg: 'assets/images/img.png',
          ),
             Cardf(
            urlimg: 'assets/images/img.png',
          ),
             Cardf(
            urlimg: 'assets/images/img.png',
          ),
             Cardf(
            urlimg: 'assets/images/img.png',
          ),
             Cardf(
            urlimg: 'assets/images/img.png',
          ),
             Cardf(
            urlimg: 'assets/images/img.png',
          ),
             
    ]);
  }

  Padding categoria() {
    return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
              child: Container( 
                width: 90,
           
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            );
  }
}



