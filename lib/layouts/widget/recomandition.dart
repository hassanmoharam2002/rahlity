

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../models/recomendedplacesmodel.dart';

class RecomanfationPlaces extends StatelessWidget {
  const RecomanfationPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:235 ,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection:Axis.horizontal ,
          itemBuilder: (context,index){
            return SizedBox(
              width: 220,
              child: Card(
                elevation: 0.4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                child:InkWell(
                  borderRadius: BorderRadius.circular(12),
                 onTap: (){
                   
                 },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            recomendedplaces[index].image,
                            height: 150,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              recomendedplaces[index].location,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),

                            ),
                            Spacer(),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 14,
                            ),
                            Text("${recomendedplaces[index].rating}",
                            style: TextStyle(
                              fontSize: 12,

                            ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                           Icon(Ionicons.location,
                             color: Theme.of(context).primaryColor,
                             size: 16,
                           ),
                            SizedBox(width: 5,),
                            Text('french polynesia',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ) ,

              ),
            );
          },
          separatorBuilder:(context,index) =>Padding(padding: EdgeInsets.only(right: 10)) ,
          itemCount: recomendedplaces.length),
    );
  }
}
