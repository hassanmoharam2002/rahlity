

import 'package:flutter/material.dart';

import 'brand_card.dart';

class ScralleBaleBrands extends StatelessWidget {
  const ScralleBaleBrands({super.key});

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    var images =[
      "assets/image/rental/car/1.png",
      "assets/image/rental/car/2.png",
      "assets/image/rental/car/3.png",
      "assets/image/rental/car/4.png",
      "assets/image/rental/car/5.png"

    ];
    return  SizedBox(
      height: (size.width - 16*4)/3,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return BrandCard(
              image: images[index],
              width: (size.width-16*4)/3,);

          },
          separatorBuilder:(context,index)=>SizedBox(
            width: 16,
          ) ,
          itemCount: images.length),
    );
  }
}
