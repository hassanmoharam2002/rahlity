import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../textformfield.dart';

class ShowBottomSheetmm extends StatefulWidget {

  const ShowBottomSheetmm({super.key });

  @override
  State<ShowBottomSheetmm> createState() => _ShowBottomSheetmmState();
}

class _ShowBottomSheetmmState extends State<ShowBottomSheetmm> {

  TextEditingController controllername = TextEditingController();
  CollectionReference user = FirebaseFirestore.instance.collection('user');
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  List<QueryDocumentSnapshot> pp=[];
  String _data="";

  void _addData() async {
    await user.doc(FirebaseAuth.instance.currentUser!.uid).set({
      'name': controllername.text,
      'id':FirebaseAuth.instance.currentUser!.uid
    },SetOptions(merge: true));
    //controllername.clear();
  }

  void _getData() async {
    QuerySnapshot querySnapshot = await user.where('id',isEqualTo:FirebaseAuth.instance.currentUser!.uid ).get();
    setState(() {
      _data = '';
      querySnapshot.docs.forEach((doc) {
        _data += "Name: ${doc['name']}\n";

      });
    });
  }
  @override

  void initState() {
    // TODO: implement initState
    _getData();

    controllername.text=_data;
    super.initState();

  }
  Widget build(BuildContext context) {

    return Form(
      key: formstate,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(
            height: 20,
          ),


          Text("Name",style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 25,
          ),
          CustomTextform(
            coloreo: Colors.grey,
            coloro: Colors.grey,
            sufix: null,
            bordr:BorderRadius.circular(10) ,
            hintext: 'put your name or change it',
            mycontroller: controllername,
            validator:  (val)
            {
              if(val== ""){
                return 'cant to be embty ';
              }
              return null;
            },
            statepassword: false,
            prefix: Icons.wrap_text,
            suffixpressed: () {  },

          ),
          SizedBox(
            height: 20,
          ),

          Center(
            child: Text(_data,style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25
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
                  Navigator.of(context).pop();

                  print(_data);
                }, child: Text('Apply',style: TextStyle(
                color: Colors.white
            ),)),
          ),
          SizedBox(height: 20,)
          // SizedBox(
          //   height: 20,
          // )
        ],
      ),
    );
  }
}

