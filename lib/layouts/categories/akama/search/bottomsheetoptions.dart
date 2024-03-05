




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostBottomSheetBar extends StatefulWidget {
  const PostBottomSheetBar({super.key});

  @override
  State<PostBottomSheetBar> createState() => _PostBottomSheetBarState();
}

class _PostBottomSheetBarState extends State<PostBottomSheetBar> {
  int numofrooms=1;
  int numofadults=2;
  int numofchildren=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Text(
              'Select rooms and guests',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 27,
                color: Colors.black
              ),
            ),
            // SizedBox(height: 40),
            Row(
              children: [
                Text('Rooms',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),),
               Spacer(),
                    Container(

                      decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black54,
                      )

                      ),
                      child: Row(

                        children: [
                          IconButton(onPressed: (){
                            setState(() {
                              numofrooms--;
                            });
                          }, icon: Icon(Icons.minimize_outlined),),

                          Text('$numofrooms',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black54
                            ),
                          ),

                          IconButton(onPressed: (){
                            setState(() {
                              numofrooms++;
                            });
                          }, icon: Icon(Icons.add)),
                        ],
                      ),
                    ),



              ],
            ),
            Row(
              children: [
                Text('adults',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),),
                Spacer(),
                Container(

                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black54,
                      )

                  ),
                  child: Row(

                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                          numofadults--;
                        });
                      }, icon: Icon(Icons.minimize_outlined),),

                      Text('$numofadults',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54
                        ),
                      ),

                      IconButton(onPressed: (){

                        setState(() {
                          numofadults++;
                        });
                      }, icon: Icon(Icons.add)),
                    ],
                  ),
                ),



              ],
            ),
            Row(
              children: [
                Text('children',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),),
                Spacer(),
                Container(

                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black54,
                      )

                  ),
                  child: Row(

                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                          numofchildren--;
                        });
                      }, icon: Icon(Icons.minimize_outlined),),

                      Text('$numofchildren',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54
                        ),
                      ),

                      IconButton(onPressed: (){
                        setState(() {
                          numofchildren++;
                        });
                      }, icon: Icon(Icons.add)),
                    ],
                  ),
                ),



              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation:0 ,
                      shape: StadiumBorder(),
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 8
                      )

                  ),
                  onPressed: (){}, child: Text('Apply',style: TextStyle(
                color: Colors.white
              ),)),
            )

          ],
        ),
      ),
    );
  }
}
