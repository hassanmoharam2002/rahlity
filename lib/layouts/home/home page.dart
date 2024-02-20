

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../drawer_ui/drawer_.dart';
import '../widget/customiconbuttom.dart';
import '../widget/locationcard.dart';
import '../widget/nearvy_places.dart';
import '../widget/recomandition.dart';
import '../widget/touristplaces.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustemedDrawer(),
      appBar:AppBar(
        elevation: 0,
        backgroundColor:Colors.transparent ,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Morming'),
            Text("hassan moharam",
              style: Theme.of(context).textTheme.labelMedium,),
          ],
        ),
        actions: [
          Customiconbutton(prees: () {  },
            icon: Icon(Ionicons.search_outline),


          ),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 12),
            child: Customiconbutton(prees: () {  },
              icon: Icon(Ionicons.notifications_outline),


            ),
          ),


        ],
      ) ,
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          //location card
          LocationCard(),
          //categores
          SizedBox(height: 15,),
          TouristPlaces(),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recomandition',
                style:Theme.of(context).textTheme.headline6 ,),
              TextButton(
                  onPressed: (){

                  },
                  child: Text(
                'view all'
              ))
            ],
          ),
          //recomended
          SizedBox(height: 10,),
          RecomanfationPlaces(),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Neaarby From you',
                style:Theme.of(context).textTheme.headline6 ,),
              TextButton(
                  onPressed: (){

                  },
                  child: Text(
                      'view all'
                  ))
            ],
          ),
          SizedBox(height: 10,),
          NearbyPlaces(),


        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index){},
        items: const [
          BottomNavigationBarItem(
              icon:Icon(Ionicons.home_outline),
            label: 'Home'

          ),
          BottomNavigationBarItem(
              icon:Icon(Ionicons.bookmark_outline),
            label: 'Boookmark'
          ),
          BottomNavigationBarItem(
              icon:Icon(Ionicons.ticket_outline),
              label: 'ticket'
          ),
          BottomNavigationBarItem(
              icon:Icon(Ionicons.person_outline),
              label: 'profile'
          )

        ],

      ),
    );
  }
}
