

import 'package:flutter/material.dart';



class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(

        child:Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Spacer(),
                Image.asset('assets/illustration.png',

                ),
                SizedBox(height: 40,),
                Text('Explore  your journey \n only with us \nnow ',
                textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,

                  )
                ),
                SizedBox(height: 20,),
                Text(' all what you want to enjoy are here\nbook it now',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54
                ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                    width: double.maxFinite,
                    child: ElevatedButton(
                        onPressed: (){
                      Navigator.of(context).pushReplacementNamed('login');
                      //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>homepage()));
                    },

                        style: ElevatedButton.styleFrom(
                          elevation:0 ,
                          shape: StadiumBorder(),
                          backgroundColor: Color(0xFF212121),
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 8
                          )

                        ),
                        child:
                        Text(
                          'Get started',style: TextStyle(
                          color: Colors.white
                        ),
                        )),
                  ),
                ),


              ],
            ),
          ),
        ),

      ),
    );
  }
}
