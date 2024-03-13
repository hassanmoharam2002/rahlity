


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home/layouts/categories/rental%20car/colors.dart';
import 'package:home/layouts/categories/rental%20car/pages/top_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body:Column(
          children: [
            Padding(
                padding: EdgeInsets.all(16),
              child: SizedBox(
                height: size.height*0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopAppBar(),
                    Text("SSearch your Dream\n Super Car to Drive",
                      style: Theme.of(context).textTheme.headlineSmall!
                          .copyWith(
                          color: backgroundColor,
                          fontWeight: FontWeight.bold),

                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height:size.width*0.12,
                            child: TextField(
                              cursorColor: grey,
                              decoration: InputDecoration(
                                prefix: Icon(
                                  CupertinoIcons.search,
                                  color:grey ,
                                  size: 30,),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    width: 2,color: grey
                                  )
                                ), focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      width: 2,color: grey
                                  ),

                              ),
                                labelText: "search your dream car",
                                labelStyle: TextStyle(
                                  color: grey,

                                ),
                                fillColor: Colors.white,
                                filled: true,

                              ),

                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: size.width*0.12,
                          height: size.width*0.12,
                          decoration: BoxDecoration(
                            color: yellowColor,
                            borderRadius: BorderRadius.circular(10)

                          ),
                          child: Image.asset("assets/image/rental/car/settings.png",
                          color: Colors.black,
                          ),

                        )

                      ],
                    )
                  ],
                ),
              ),
            ),
      
          ],
        ) ,
      ),
    );
  }
}
