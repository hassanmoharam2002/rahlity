import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../textformfield.dart';

class phone extends StatefulWidget {
  const phone({super.key});

  @override
  State<phone> createState() => _phoneState();
}

class _phoneState extends State<phone> {

  TextEditingController phone = TextEditingController();
  CollectionReference user = FirebaseFirestore.instance.collection('user');
  String _phone="";
  void _addData() async {
    await user.doc(FirebaseAuth.instance.currentUser!.uid).set({
      'phone': phone.text,
      'id':FirebaseAuth.instance.currentUser!.uid
    },SetOptions(merge: true));
    //controllername.clear();
  }

  void _getData() async {
    QuerySnapshot querySnapshot = await user.where('id',isEqualTo:FirebaseAuth.instance.currentUser!.uid ).get();
    setState(() {
      querySnapshot.docs.forEach((doc) {
        _phone += "phone: ${doc['phone']}\n";
      });
    });
  }
  @override
  void initState() {
    _getData();
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,


      children: [
        SizedBox(
          height: 20,
        ),


        Text("Phone",style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold
        ),),
        SizedBox(
          height: 25,
        ),
        CustomTextform(
          bordr:BorderRadius.circular(10) ,
          hintext: 'phone',
          mycontroller: phone,
          validator: null,
          statepassword: false,
          prefix: Icons.phone,
          suffixpressed: () {  },

        ),
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



