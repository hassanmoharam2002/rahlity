


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home/layouts/categories/rental%20car/colors.dart';

class TextandMoraRow extends StatelessWidget {
  const TextandMoraRow({super.key, required this.text});

  @override
  final String text;
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$text",style: Theme.of(context).textTheme.titleLarge!.
        copyWith(color:Colors.white, fontWeight: FontWeight.bold),),
        Container(
          decoration: BoxDecoration(
            color: secBackgroundColor,
            borderRadius: BorderRadius.circular(40),
          ),
          padding: EdgeInsets.symmetric(vertical: 8,horizontal:16 ),
          child: Row(
            children: [
              Text('more',style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: yellowColor
              ),),
              SizedBox(
                width: 8,
              ),
              Icon(
                CupertinoIcons.play_arrow_solid,
                size: 10,
                color: yellowColor,
              )
            ],
          ),
        )
      ],

    );
  }
}
