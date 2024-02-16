

import 'package:flutter/material.dart';

import '../../models/nearbymodel.dart';
import 'dictance.dart';

class akama_w extends StatelessWidget {
  const akama_w({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     children: List.generate(nearbyplaces.length, (index)
     {
       return Padding(
         padding: const EdgeInsets.only(bottom: 10),
         child: SizedBox(
           height: 160,
           width: double.maxFinite,
           child: Card(
             elevation: 0.4,
             shape:RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(12)
             ),
             child:InkWell(
               borderRadius: BorderRadius.circular(12),
               onTap: () {},
               child: Row(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.circular(12),
                     child: Image.asset(nearbyplaces[index].image,
                       height: double.maxFinite,
                       width: 180,
                       fit: BoxFit.cover,
                     ),
                   ),
                   SizedBox(
                     width: 10,
                   ),
                   Expanded(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('sea of peace',
                           style: TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                         Text('protic team'),
                         SizedBox(height: 10,),
                         //Dictance widget
                         Distance(),
                         Spacer(),
                         Row(
                           children: [
                             Icon(Icons.star,
                               color: Colors.yellow,
                               size: 14,
                             ),
                             Text('4.5',style: TextStyle(
                               fontSize: 12,
                             ),),
                             Spacer(),
                             RichText(text:TextSpan(
                                 style: TextStyle(
                                     fontSize: 20,
                                     color: Theme.of(context).primaryColor
                                 ),
                                 text: "\$22",
                                 children: [
                                   TextSpan(
                                       style: TextStyle(
                                           fontSize: 12,
                                           color: Colors.black54
                                       ),
                                       text: '/person'
                                   )
                                 ]
                             ) ,),
                           ],
                         )
                       ],
                     ),
                   )

                 ],
               ),

             ) ,
           ),
         ),
       );;
     }),
    );
  }
}
