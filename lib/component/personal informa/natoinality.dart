import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../textformfield.dart';

class nation extends StatefulWidget {
  const nation({super.key});

  @override
  State<nation> createState() => _nationState();
}

class _nationState extends State<nation> {

  TextEditingController nation = TextEditingController();
  CollectionReference user = FirebaseFirestore.instance.collection('user');
  String nationality="";

  void _addData() async {
    await user.doc(FirebaseAuth.instance.currentUser!.uid).set({
      'nationality': nation.text,
      'id':FirebaseAuth.instance.currentUser!.uid
    },SetOptions(merge: true));
    //controllername.clear();
  }

  void _getData() async {
    QuerySnapshot querySnapshot = await user.where('id',isEqualTo:FirebaseAuth.instance.currentUser!.uid ).get();
    setState(() {
      querySnapshot.docs.forEach((doc) {
        nationality += "nationality: ${doc['nationality']}\n";
      });
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    _getData();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,


      children: [
        SizedBox(
          height: 20,
        ),


        Text("Nationality",style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(
          height: 25,
        ),
        CustomTextform(
          bordr:BorderRadius.circular(10) ,
          hintext: 'nationality',
          mycontroller: nation,
          validator: null,
          statepassword: false,
          prefix: Icons.flag_circle_rounded,
          suffixpressed: () {  },

        ),

        Text(nationality,style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold
        ),),
        Spacer(),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation:0 ,
                  shape: StadiumBorder(),
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 8
                  )

              ),
              onPressed: (){
                _addData();
                Navigator.of(context).pop();

              }, child: Text('Apply',style: TextStyle(
              color: Colors.white
          ),)),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}



