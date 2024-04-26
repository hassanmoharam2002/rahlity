


import 'package:flutter/material.dart';

class PostAppBar extends StatelessWidget {
  const PostAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.all(40),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,

       children: [

         InkWell(
           onTap: (){
             Navigator.pop(context);
           },
           child: Container(
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(15),
               boxShadow:[
                 BoxShadow(
                   blurRadius: 6,
                   color: Colors.white
                 )
               ]

             ),
             child: Icon(
               Icons.arrow_back
                   ,size: 27
             ),
           ),
         ),
         InkWell(
           onTap: (){
             
           },
           child: Container(
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
               color: Colors.white,
               boxShadow: [BoxShadow(
                 color: Colors.black26,
                 blurRadius: 6
               )]
             ),
             child: Icon(
               Icons.favorite_border,
               color: Colors.redAccent,
               size: 28,
             ),
           ),
         )
       ],
     ), 
    );
  }
}
