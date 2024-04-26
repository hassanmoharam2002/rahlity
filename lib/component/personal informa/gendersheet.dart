import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GEnderBottomSheet extends StatefulWidget {

  @override

  State<GEnderBottomSheet> createState() => _GEnderBottomSheetState();
}

class _GEnderBottomSheetState extends State<GEnderBottomSheet> {
  CollectionReference user = FirebaseFirestore.instance.collection('user');
   String? gender ;
   String _gender='';

   void _addData() async {
     await user.doc(FirebaseAuth.instance.currentUser!.uid).set({
       'gender': gender,
       'id':FirebaseAuth.instance.currentUser!.uid
     },SetOptions(merge: true));
     //controllername.clear();
   }

   void _getData() async {
     QuerySnapshot querySnapshot = await user.where('id',isEqualTo:FirebaseAuth.instance.currentUser!.uid ).get();
     setState(() {

       querySnapshot.docs.forEach((doc) {
         _gender += "gender: ${doc['gender']}\n";
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

        Text("Gender",style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold
        ),),


        RadioListTile( title:Text("male"),value:"male" , groupValue: gender, onChanged: (val){
          setState(() {
            gender= val;
          });
        }),
        RadioListTile(title:Text("female"),value:"female" , groupValue: gender, onChanged: (val){
          setState(() {
            gender= val;
          });
        }),
        RadioListTile(title:Text("i dont want to tell that"),value:"i dont want to tell that" , groupValue: gender,
            onChanged: (val){
          setState(() {
            gender= val;
          });

        }),


        Center(
          child: Text('--$_gender--',style: TextStyle(
            fontSize: 26
          ),),
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
              }, child: Text('Apply',style: TextStyle(
              color: Colors.white
          ),)),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );

  }
}
