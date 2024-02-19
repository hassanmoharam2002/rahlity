
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onpressed;
  final String title;
  const CustomButton({super.key, required this.onpressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      height: 40,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      color: Color(0xFF212121),
      textColor: Colors.white,
      onPressed:onpressed ,
      child:Text(title) ,);
  }
}
