

import 'package:flutter/material.dart';
import 'package:home/layouts/widget/Postappbar.dart';
import 'package:home/layouts/widget/postbottombar.dart';
import 'package:home/models/tourist_places_model.dart';

import '../models/nearbymodel.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
           image: AssetImage(nearbyplaces[1].image),
          fit: BoxFit.fill,
            opacity: 0.7
        )
      ),
      child: Scaffold(
        backgroundColor:Colors.transparent ,
          appBar:PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: PostAppBar(),
          ),
  bottomNavigationBar: PostBottomBar(),
      ),
    );
  }
}
