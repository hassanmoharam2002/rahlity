

import 'package:flutter/material.dart';

class CustemedDrawer extends StatelessWidget {
  const CustemedDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/image/background.jpeg',
              fit: BoxFit.cover,
                height: 270,
                width: double.infinity,
              ),


            ],
          )
        ],
      ),
    );
  }
}
