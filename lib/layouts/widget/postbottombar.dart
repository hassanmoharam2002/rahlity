

import 'package:flutter/material.dart';

import '../../models/nearbymodel.dart';
import '../payment/Features/checkout/presentation/views/my_cart_view.dart';

class PostBottomBar extends StatelessWidget {
  const PostBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2,
      decoration: BoxDecoration(
        color: Color(0xFFEDF2F6),
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
      ),

      ),
        child: ListView(
          children: [
            Padding(
                padding: EdgeInsets.only(right: 14,left: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text('city name,country ',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold
                        ),

                      ),
                      // SizedBox(
                      //   width: ,
                      // )
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 25,
                          ),
                          Text("4.5"
                          ,style: TextStyle(
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height:25 ,
                  ),
                  Text(
                      'Lorem Ipsum is simply dummy text of the'
                          ' printing and typesetting industry. L'
                          'orem Ipsum has been the industrys '
                          'standard dummy text ever since the '
                          '1500s, when an unknown printer'
                          ' took a galley of type and scrambled '
                          'it to make a type specimen book. It'
                          ' has survived not only five'
                          ' centuries, but also the leap'
                          ' into electronic typesetting',
                    style: TextStyle(
                      color: Colors.black54,fontSize: 16,

                    ),
                    textAlign: TextAlign.justify,

                      ),
                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 5),
                        child: Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(nearbyplaces[1].image,
                            fit: BoxFit.cover,
                              width: 120,
                              height: 90,
                            ),
                          
                          
                          ),
                        ),
                      ),
                      Expanded(child: Container(
                        alignment: Alignment.center,
                        width: 120,
                        height: 90,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(image:AssetImage(nearbyplaces[1].image
                          ),fit: BoxFit.cover,
                            opacity: 0.4

                          )
                        ),
                        child:Text(
                          '10+',style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600
                        ),
                        ) ,
                      ))
                    ],
                  ),
                  SizedBox(height:15 ,),
                  Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration:BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              )
                            ]

                          ) ,
                          child: Icon(
                            Icons.bookmark_add_outlined,
                            size: 40,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical:15 ,horizontal: 25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.redAccent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4
                              )
                            ]
                          ),
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyCartView()));
                            },
                            child: Text(
                              'Book now',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 26,
                                color: Colors.white

                              ),
                            ),
                          ),
                        )

                    ],),
                  )

                  



                ],
              ),
            )
          ],
        ),
    );
  }
}
