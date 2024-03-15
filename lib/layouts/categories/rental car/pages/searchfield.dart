import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class SearchFieled extends StatelessWidget {
  const SearchFieled({super.key});

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;

    return Row(
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
    );
  }
}
