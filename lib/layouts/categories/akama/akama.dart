


import 'package:flutter/material.dart';
import '../../../component/textformfield.dart';
import '../../widget/akama_w.dart';

class Akama extends StatelessWidget {
   Akama({super.key});
   TextEditingController search = TextEditingController();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          SizedBox(
            height: 30,
          ),
          Container(

            height: 200,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                CustomTextform(
                  bordr:BorderRadius.circular(10) ,
                  hintext: 'search',
                  mycontroller: search,
                  validator: null,
                  statepassword: false,
                  prefix: Icons.search,
                  suffixpressed: () {  },

                ),
              ],

            ),
          ),
          akama_w(),

        ],
      ),
    );
  }
}
