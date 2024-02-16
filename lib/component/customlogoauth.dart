

import 'package:flutter/material.dart';

class CustomLogoAuth extends StatelessWidget {
  const CustomLogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      width: 80,
      height: 80,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(80)
      ),
      child: Image.asset("assets/image/h.png",
        width: 40,
        height: 40,
        fit: BoxFit.fill,

      ),
    );
  }
}
