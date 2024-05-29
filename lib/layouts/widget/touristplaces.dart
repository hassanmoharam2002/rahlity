

import 'package:flutter/material.dart';
import 'package:home/layouts/attraction/atract.dart';

import '../../models/tourist_places_model.dart';
import '../categories/akama/akama.dart';
import '../categories/rental car/pages/home_pages.dart';
import '../flying_tickets/Screens/home_Screen.dart';

class TouristPlaces extends StatelessWidget {
  const TouristPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:40 ,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return InkWell(
              highlightColor: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              onTap: (){
                switch(touristPlaces[index].numid){
                  case 0:
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Akama()));
                    break;
                  case 1:
                  //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Akama()));
                  return;
                    break;
                  case 2:
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));

                    //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Akama()));
                    return;
                    break;
                  case 3:
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                    return;
                    break;
                  case 4:
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Attraction()));
                    return;
                    break;

                }
                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Akama()));
              },
              child: Chip(
                  label: Text(touristPlaces[index].name),
                avatar: CircleAvatar(
                  backgroundImage: AssetImage(touristPlaces[index].image),
                ),
                backgroundColor: Colors.white,
                elevation: 0.4,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ) ,

              ),
            );
          },
          separatorBuilder: (context,index)=>const Padding(
              padding: EdgeInsets.only(right: 10)),
          itemCount: touristPlaces.length),
    );
  }
}

List pagecategories= [
  
];
