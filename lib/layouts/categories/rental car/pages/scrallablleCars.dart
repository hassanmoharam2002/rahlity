

import 'package:flutter/material.dart';

import '../models/car.dart';
import 'carcards.dart';

class SctablleCars extends StatelessWidget {
  const SctablleCars({super.key});




  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return SizedBox(
      height: size.width*0.25,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return CarCards(
            image: cars[index].image,
            width: (size.width-16*3)/2,
            height: ((size.width-16*3)/2)*0.4,
            title: cars[index].name,
            subtitle: "${cars[index].price}\$/day",


          );

        },
        separatorBuilder:(context,index)=>SizedBox(
          width:16 ,
        ),
        itemCount:  cars.length,

      ),
    );
  }
}
