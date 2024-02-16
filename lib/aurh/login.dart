

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../component/customButton.dart';
import '../component/customlogoauth.dart';
import '../component/textformfield.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool ispasswordshow =true;
  bool isloadong=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> formstate= GlobalKey<FormState>();


  Future signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if(googleUser== null){
      return;//=========================stop function here
    }
    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);
    Navigator.of(context).pushNamedAndRemoveUntil('homepage', (route) => false);

  }

  //-----------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isloadong ? Center(child: CircularProgressIndicator(),) :
      Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Form(
              key: formstate,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height:  50,),
                  const Center(
                      child:CustomLogoAuth()
                  ),
                  Container(
                    height: 20,
                  ),
                  const Text('Login',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('login to continue using the app',style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey
                  ),),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('Email',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  CustomTextform(
                    bordr: BorderRadius.circular(50),
                    prefix: Icons.email,
                    hintext: 'Enter your email',
                    mycontroller: email, validator: (val) {
                      if(val== ""){
                        return 'cant to be empty';
                      }
                      return null;
                    }, statepassword: false, suffixpressed: () {  },

                  ),
                  const Text('password',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Container(height: 10,),
                  CustomTextform(
                    bordr: BorderRadius.circular(50),


                    sufix: ispasswordshow ?Icons.visibility:Icons.visibility_off,
                    suffixpressed: (){
                      setState(() {
                        ispasswordshow=  !ispasswordshow;
                      });

                    },
                    prefix: Icons.password,
                    statepassword: ispasswordshow ?true:false,
                    mycontroller: password,
                    hintext: 'Enter your password',
                    validator: (val) {
                      if(val== ""){
                        return 'cant to be empty';
                      }
                      return null;
                    },

                  ),
                  InkWell(
                    onTap: ()async{
                      if(email.text ==''){
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.question,
                          animType: AnimType.rightSlide,
                          title: 'ERror',
                          desc: 'برجاء ادخال البريد الالكترونى ثم اكمال العماليات  ',
                        ).show();
                        return ;
                      }
                      try{
                        await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.success,
                          animType: AnimType.rightSlide,
                          title: 'ERror',
                          desc: 'تم اعادة ارسال لينك لاعادة تععيين كلمة المرور الى بريدك الالكترونى ',
                        ).show();
                      }catch(e){
                        print('${e}//////////');
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.success,
                          animType: AnimType.rightSlide,
                          title: 'ERror',
                          desc: 'الرجاء التاكد من بريدك الالكترونى ثم عد لاعادة المحاولاة ',
                        ).show();
                      }

                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 10,bottom: 20
                      ),
                      alignment: Alignment.topRight,
                      child: const Text('forget password ?',

                        style: TextStyle(fontSize: 14),

                      ),
                    ),
                  ),


                ],
              ),
            ),
            CustomButton(title: 'login',
              onpressed: ()async{
                if(formstate.currentState!.validate()){
                  try {
                    isloadong=false;
                    setState(() {
                    });
                    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: email.text.trim(),
                        password: password.text
                    );

                    isloadong=true;

                    setState(() {

                    });
                    if(credential.user!.emailVerified){
                      Navigator.of(context).pushReplacementNamed('homepage');
                    }else{
                      FirebaseAuth.instance.currentUser!.sendEmailVerification();
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.error,
                        animType: AnimType.rightSlide,
                        title: 'ERror',
                        desc: 'الرجاء الذهاب لبريدك الالكترونى والتحقق من الحسابحتى يتم تفعيل الحساب ',
                      ).show();
                    }

                  } on FirebaseAuthException catch(e) {
                    print("////////////////////$e");
                    if (e.code == 'user-not-found') {
                      print('No user found for that email.');
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.error,
                        animType: AnimType.rightSlide,
                        title: 'ERror',
                        desc: 'No user found for that email.',
                      ).show();
                    } else if (e.code == 'wrong-password') {
                      print('Wrong password provided for that user.');
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.error,
                        animType: AnimType.rightSlide,
                        title: 'ERror',
                        desc: 'Wrong password provided for that user',
                      ).show();
                    }
                  }
                }else{
                  print("not valid");
                }
              },),


            Container(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  minWidth: 60,
                  color: Colors.red[700],
                  textColor: Colors.white,
                  onPressed:(){
                    signInWithGoogle();
                  } ,
                  child:Image.asset('assets/image/g.png'
                    ,width: 20,height: 20,) ,
                ),
                MaterialButton(
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  minWidth: 60,
                  color: Colors.blue[700],
                  textColor: Colors.white,
                  onPressed:(){
                    signInWithGoogle();
                  } ,
                  child:Image.asset('assets/image/g.png'
                    ,width: 20,height: 20,) ,
                ),
                MaterialButton(
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  minWidth: 60,
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed:(){
                    signInWithGoogle();
                  } ,
                  child:Image.asset('assets/image/g.png'
                    ,width: 20,height: 20,) ,
                ),


              ],
            ),
            Container(height: 20,),
            // Text('dont  have acount ? register', textAlign: TextAlign.center,),
            InkWell(
              onTap:(){
                Navigator.of(context).pushReplacementNamed('signup');

              } ,
              child: Container(
                child: const Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text:"dont  have acount ?"
                    ),
                    TextSpan(
                        text:" register",
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
