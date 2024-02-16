
import 'package:flutter/material.dart';

class Customiconbutton extends StatelessWidget {
  final void Function()? prees;
  final Widget icon;
  const Customiconbutton({super.key,required this.prees, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300]!
        ),
        shape: BoxShape.circle
      ),
      child: IconButton(
        onPressed: prees,
        constraints: BoxConstraints.tightFor(width: 40),
        color: Colors.black54,
        icon: icon,
        splashRadius: 22,
      ),
    );
  }
}
