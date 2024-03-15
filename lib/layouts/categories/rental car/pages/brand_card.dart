


import 'package:flutter/material.dart';

import '../colors.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key, required this.image, required this.width});

  final String image;
  final double width;
  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: secBackgroundColor,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Image.asset(
        image,
        fit: BoxFit.contain,),
    );;
  }
}
