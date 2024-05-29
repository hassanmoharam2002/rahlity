

import 'package:flutter/material.dart';

class CustomTextform extends StatelessWidget {

  BorderRadius?  bordr;
   VoidCallback suffixpressed;
   IconData? sufix;
  final bool statepassword;
  final String hintext;
  final TextEditingController mycontroller;
  final String? Function(String?)? validator;
   final IconData? prefix;
   final Color? coloro;
  final Color? coloreo;

    CustomTextform({super.key,

    required this.hintext,
    required this.mycontroller,
    required this.validator, required this.statepassword, required this.prefix,
       required this.suffixpressed, this.sufix,
      this.bordr, this.coloro, this.coloreo,

  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(


      obscureText: statepassword,
      validator: validator,
      controller: mycontroller,
      decoration: InputDecoration(
        suffixIcon :sufix != null
            ? IconButton(onPressed: suffixpressed, icon: Icon(sufix))
            : sufix = null,
        prefixIcon: Icon(prefix),
        constraints:  const BoxConstraints(),
        hintText:hintext ,
        hintStyle: const TextStyle(
            fontSize: 14, color: Colors.grey
        ),
        contentPadding:EdgeInsets.symmetric(vertical:2 ,
            horizontal: 10) ,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
            borderRadius: bordr!,
            borderSide: BorderSide(
                width: 1.7,
                color: coloro!)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: bordr!,
            borderSide: BorderSide(
                width: 1.7,
                color: coloreo!)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: bordr!,
          borderSide: BorderSide(
            width: 1.7,
            color: Color(0xFF212121),
          ),
        ),


      ),

    );
  }
}
