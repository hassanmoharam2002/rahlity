import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home/component/personal%20informa/natoinality.dart';
import 'package:home/component/personal%20informa/phone.dart';

import '../../layouts/categories/akama/search/bottomsheetoptions.dart';
import '../../layouts/widget/date_utils.dart';

import 'birthdate.dart';
import 'gendersheet.dart';
import 'name.dart';


  class PersonalInformation extends StatefulWidget {

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  @override
  void initState() {
    // TODO: implement initState
    _addData();
    _getData();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 10,
      leading: IconButton( onPressed: ()=>Navigator.of(context).pop(), icon: Icon(Icons.arrow_back_ios), ),
      title: const Text('Personalinformation',
        style: TextStyle(
          fontSize: 25 ,
          fontWeight: FontWeight.bold ,
          color: Colors.black ,

        ),
      ),
      centerTitle: true,
    ),


      body:ListView(
        children: <Widget>[
          ListTile(

            leading:  Icon(Icons.person),
            title:  Text('Name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold ,),
            ),
            trailing:  Icon(Icons.arrow_forward_ios, size: 15 ,),
            subtitle:  Text('hassan moharam',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black45 ,
              ),
            ),
            onTap: () {
              showModalBottomSheet(context: context,
                  builder: (BuildContext){
                    return ShowBottomSheetmm();
                  }
              );

            },
          ),
          ListTile(
            leading: const Icon(Icons.accessibility_new_outlined),
            title: const Text('Gender',
              style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold ,),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 15 ,),
            subtitle: const Text('Male',
              style: TextStyle(
                fontSize:12  ,
                color: Colors.black45 ,
              ),
            ),

            onTap: () {
              showModalBottomSheet(context: context,
                  builder: (BuildContext){
                    return GEnderBottomSheet();
                  }
              );
              // Navigate to details page
            },
          ),
          ListTile(
            leading:  Icon(Icons.date_range),
            title:  Text('birthDate' ,
              style: TextStyle(
                fontWeight: FontWeight.bold ,
                fontSize: 20,
              ),
            ),
            trailing:  Icon(Icons.arrow_forward_ios, size: 15 ,),
            subtitle: Text(MyDateUtalis.formatTaskDate(selectedDate),
              style: TextStyle(
                fontSize: 12,
                color: Colors.black45 ,
              ),
            ),

            onTap: () {

              startshowtaskdatepicker();
              setState(() {
                _addData();
                _getData();
              });


              // Navigate to security page
            },
          ),
          ListTile(
            leading: const Icon(Icons.numbers),
            trailing: const Icon(Icons.arrow_forward_ios, size: 15 ,),
            title: const Text('phone number',
              style: TextStyle(
                fontWeight: FontWeight.bold ,
                fontSize: 20,
              ),
            ),
            subtitle:const Text('01113287766',
              style: TextStyle(
                fontSize: 12 ,
                color: Colors.black45 ,
              ),
            ) ,
            onTap: () {
              showModalBottomSheet(context: context,
                  builder: (BuildContext){
                    return phone();
                  }
              );
              // Navigate to payment information page
            },
          ),
          ListTile(
            leading: Icon(Icons.flag),
            title: const Text('nationality',

              style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold ,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 15 ,),
            subtitle: const Text('Egyption',
              style: TextStyle(
                fontSize:  12 ,
                color: Colors.black45 ,

              ),
            ),
            onTap: () {
              showModalBottomSheet(context: context,
                  builder: (BuildContext){
                    return nation();
                  }
              );

              // Navigate to notifications page
            },
          ),
          ListTile(
            leading: const Icon(Icons.supervised_user_circle_outlined),
            title: const Text('photo',
              style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold ,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 15 ,),
            subtitle:const Text('Add or edit information about the people you are traveling with',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black45 ,

              ),
            ) ,
            onTap: (){

            },


          ),
        ],
      ),
    );
  }

  var selectedDate = DateTime.now();
  void startshowtaskdatepicker() async {
    var userselectdate = await showDatePicker(
        initialDate: selectedDate,
        firstDate: DateTime.utc(60),
        lastDate: DateTime.now().add(Duration(days: 365)), context:context);

    if (userselectdate == null) {
      return;
    }
    setState(() {
      selectedDate = userselectdate;
    });
  }

  //////////////////
  void _addData() async {

    CollectionReference user = FirebaseFirestore.instance.collection('user');


    await user.doc(FirebaseAuth.instance.currentUser!.uid).set({
      'birthdate':selectedDate ,
      'id':FirebaseAuth.instance.currentUser!.uid
    },SetOptions(merge: true));
    //controllername.clear();
  }

  void _getData() async {
    var _bd;
    CollectionReference user = FirebaseFirestore.instance.collection('user');
    QuerySnapshot querySnapshot = await user.where('id',isEqualTo:FirebaseAuth.instance.currentUser!.uid ).get();
    _bd = '';
    querySnapshot.docs.forEach((doc) {
      _bd += "birthdate: ${doc['birthdate']}\n";

    });
  }
}




