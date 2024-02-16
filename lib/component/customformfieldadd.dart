

import 'package:flutter/material.dart';

class CustomTextformadd extends StatelessWidget {
  final String hintext;
  final TextEditingController mycontroller;
  final String? Function(String?)? validator;

  const CustomTextformadd({super.key, required this.hintext, required this.mycontroller, required this.validator});



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: mycontroller,
      decoration: InputDecoration(
        hintText:hintext ,
        hintStyle: TextStyle(
            fontSize: 14, color: Colors.grey
        ),
        contentPadding:EdgeInsets.symmetric(vertical:2 ,
            horizontal: 10) ,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.grey)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.grey)
        ),


      ),

    );
  }
}
