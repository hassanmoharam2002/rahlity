


import 'package:flutter/material.dart';
import 'package:home/layouts/categories/akama/search/bottomsheetoptions.dart';
import 'package:home/layouts/widget/date_utils.dart';
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
        title: Text(
          'Stays',style: TextStyle(
          color: Colors.blue
        ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          SizedBox(
            height: 20,
          ),

          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),

            child: Column(
              children: [
                CustomTextform(
                  bordr:BorderRadius.circular(10) ,
                  hintext: 'search',
                  mycontroller: search,
                  validator: null,
                  statepassword: false,
                  prefix: Icons.location_on_outlined,
                  suffixpressed: () {  },

                ),

                SizedBox(height: 10,),
                Container(
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
                      InkWell(
                        onTap: (){

                          startshowtaskdatepicker();
                        },
                        child: Row(children: [
                          Icon(Icons.date_range),
                          SizedBox(width: 5,),
                          Text(MyDateUtalis.formatTaskDate(selectedDate)),
                          SizedBox(width: 50,),
                        ],),
                      ),

                      Container(
                        color: Colors.blue,
                        height: 40,
                        width: 5,
                      ),

                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          lastshowtaskdatepicker();
                        },
                        child: Row(children: [Icon(Icons.date_range_rounded),
                          SizedBox(width: 5,),
                          Text(MyDateUtalis.formatTaskDate(lastselectedDate))],),
                      )

                    ],
                  ),
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
   var selectedDate = DateTime.now();

   void startshowtaskdatepicker() async {
     var userselectdate = await showDatePicker(
         context: context,
         initialDate: selectedDate,
         firstDate: DateTime.now(),
         lastDate: DateTime.now().add(Duration(days: 365)));

     if (userselectdate == null) {
       return;
     }
     setState(() {
       selectedDate = userselectdate;
     });
   }
   var lastselectedDate = DateTime.now();

   void lastshowtaskdatepicker() async {
     var userselectdate = await showDatePicker(
         context: context,
         initialDate: lastselectedDate,
         firstDate: DateTime.now(),
         lastDate: DateTime.now().add(Duration(days: 365)));

     if (userselectdate == null) {
       return;
     }
     setState(() {
       lastselectedDate = userselectdate;
     });
   }


}
