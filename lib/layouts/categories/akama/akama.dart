


import 'package:flutter/material.dart';
import 'package:home/layouts/categories/akama/search/bottomsheetoptions.dart';
import '../../../component/textformfield.dart';
import '../../widget/akama_w.dart';

class Akama extends StatefulWidget {
   Akama({super.key});

  @override
  State<Akama> createState() => _AkamaState();
}

class _AkamaState extends State<Akama> {
   TextEditingController search = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          SizedBox(
            height: 30,
          ),
          Container(

            height: 200,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
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
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: (){
                    showModalBottomSheet(context: context,
                        builder: (BuildContext){
                      return PostBottomSheetBar();
                        }
                    );
                  },
                  child:Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 2
                      ),
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 5,),
                        Text(' 1 Rooms .  2 adults . 0 children')
                      ],
                    ),
                  )

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
