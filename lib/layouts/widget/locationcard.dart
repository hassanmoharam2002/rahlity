

import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      elevation: 0.3,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.asset('assets/map.png',
            width: 100,
            ),
            SizedBox(width: 10,) ,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('your location',
              // style: Theme.of(context).textTheme.headline6,
                style: TextStyle(
                  fontSize: 23,
                  color: Theme.of(context).primaryColor
                ),
              ),
                SizedBox(
                  height: 5,
                ),
                Text('Unite States ,New Yourk',
                  style:Theme.of(context).textTheme.labelLarge ,

                ),
              ]
            )

          ],
        ),
      ),

    );
  }
}
