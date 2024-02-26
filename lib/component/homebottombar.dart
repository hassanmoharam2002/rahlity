
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  int on=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return CurvedNavigationBar(
      buttonBackgroundColor: Colors.white,
      backgroundColor: Colors.blueAccent,
      index: 0,
      items: [
        Icon(Ionicons.home_outline,size: 30,
        color: on ==0 ? Colors.blue: Colors.black,
        ),
        Icon(Ionicons.bookmark_outline,size: 30,
          color :on ==1 ? Colors.blue: Colors.black,
        ),
        Icon(Ionicons.ticket_outline,size: 30,
          color :on ==2 ? Colors.blue: Colors.black,

        ),

      ],
      letIndexChange: (index)=>true,
      onTap: (index){

        setState(() {
          on=index;
        });
      print('nln$on');
      },
    );
  }
}
