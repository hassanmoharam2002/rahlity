

import 'package:flutter/material.dart';

import '../colors.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Row(
      children: [
        Icon(Icons.location_on,
          color:yellowColor,
          size:30 ,),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('your location',
              style:Theme.of(context).
              textTheme.titleLarge!.
              copyWith(color: grey) ,
            ),
            Text('miramar, san Diago',
              style:Theme.of(context).
              textTheme.titleLarge!.
              copyWith(color: grey) ,
            ),

          ],
        ),
        Spacer(),
        Container(
          width: size.width * 0.12,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                width: 2,color: grey
            ),
          ),
          child:Image.asset(
            'assets/image/rental/car/user.png',
            fit: BoxFit.cover,
          ) ,
        )
      ],
    );
  }
}
