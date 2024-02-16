

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../component/customButton.dart';
import '../component/customlogoauth.dart';
import '../component/textformfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formstate= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Form(
              key: formstate,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height:  50,),
                  Center(
                      child:CustomLogoAuth()
                  ),
                  Container(
                    height: 20,
                  ),
                  Text('Login',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('login to continue using the app',style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey
                  ),),
                  SizedBox(
                    height: 15,
                  ),
                  Text('username',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  CustomTextform(hintext: 'Enter your username',
                    mycontroller: username,
                    validator: (val) {
                      if(val== ""){
                        return 'cant to be empty';
                      }
                    },
                    statepassword: false,
                    prefix: Icons.incomplete_circle,
                    suffixpressed: () {  },

                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Text('Email',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),


                  CustomTextform(hintext: 'Enter your email',
                    mycontroller: email,
                    validator: (val) {
                      if(val== ""){
                        return 'cant to be empty';
                      }
                    }, statepassword: false, prefix: Icons.email_sharp, suffixpressed: () {  },

                  ),
                  Container(height: 10,),
                  Text('password',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                  CustomTextform(mycontroller: password,
                    hintext: 'Enter your password',
                    validator: (val) {
                      if(val== ""){
                        return 'cant to be empty';
                      }
                    }, prefix: Icons.pin, statepassword: false, suffixpressed: () {  },

                  ),



                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),
            CustomButton(

              title: 'login',
              onpressed: ()async{
               if(formstate.currentState!.validate()){
                 try {
                   final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                     email: email.text,
                     password:password.text ,
                   );
                   FirebaseAuth.instance.currentUser!.sendEmailVerification();
                   Navigator.of(context).pushReplacementNamed('login');
                 } on FirebaseAuthException catch (e) {
                   if (e.code == 'weak-password') {
                     print('The password provided is too weak.');
                     AwesomeDialog(
                       context: context,
                       dialogType: DialogType.error,
                       animType: AnimType.rightSlide,
                       title: 'ERror',
                       desc: 'The password provided is too weak.',
                     ).show();
                   } else if (e.code == 'email-already-in-use') {
                     print('The account already exists for that email.');
                     AwesomeDialog(
                       context: context,
                       dialogType: DialogType.error,
                       animType: AnimType.rightSlide,
                       title: 'ERror',
                       desc: 'The account already exists for that email.',
                     ).show();
                   }
                 } catch (e) {
                   print(e);
                 }
               }else{
                 print("/////////not valid");
               }

            },),

            Container(height: 20,),

            Container(height: 20,),
            // Text('dont  have acount ? register', textAlign: TextAlign.center,),
            InkWell(
              onTap:(){
              Navigator.of(context).pushNamed('login');
              } ,
              child: Container(
                child: Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text:" have an acount ?"
                    ),
                    TextSpan(
                        text:"LogIn",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.orange
                        )
                    ),
                  ])),
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
