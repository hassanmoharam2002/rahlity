


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home/layouts/categories/rental%20car/colors.dart';
import 'package:home/layouts/categories/rental%20car/pages/brand_card.dart';
import 'package:home/layouts/categories/rental%20car/pages/scrallablleCars.dart';
import 'package:home/layouts/categories/rental%20car/pages/scrollabarbrands.dart';
import 'package:home/layouts/categories/rental%20car/pages/searchfield.dart';
import 'package:home/layouts/categories/rental%20car/pages/top_app_bar.dart';

import '../models/car.dart';
import 'TextAndMoreRow.dart';
import 'carcards.dart';

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
                    Text("Search your Dream\n Super Car to Drive",
                      style: Theme.of(context).textTheme.headlineSmall!
                          .copyWith(
                          color: backgroundColor,
                          fontWeight: FontWeight.bold),

                    ),
                   SearchFieled(),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                  ),
                  padding: EdgeInsets.all(16),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                    children: [
                      TextandMoraRow(text: "Top Brands",),
                      ScralleBaleBrands(),
                      TextandMoraRow(text: "Recomandations",),
                      SizedBox(
                        height: 12,
                      ),
                      SctablleCars(),




                      
                    ],
                  ) ,
                ),

            )
      
          ],
        ) ,
      ),
    );
  }
}
