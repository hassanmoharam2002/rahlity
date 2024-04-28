


import 'package:flutter/material.dart';
import 'package:home/layouts/attraction/attract_w.dart';

import '../../component/textformfield.dart';
import '../widget/date_utils.dart';

class Attraction extends StatefulWidget {
  const Attraction({super.key});

  @override
  State<Attraction> createState() => _AttractionState();
}

class _AttractionState extends State<Attraction> {
  @override
  TextEditingController search = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("attractions"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          SizedBox(
            height: 10,
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
                  coloro: Colors.blue,
                  coloreo: Colors.blue,

                ),


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

                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        enableFeedback: true,
                          elevation:0 ,
                          shape: RoundedRectangleBorder(),
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8
                          )

                      ),
                      onPressed: (){}, child: Text('Search',style: TextStyle(
                      color: Colors.white
                  ),)),
                )
              ],

            ),
          ),
          AttractW(),

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
