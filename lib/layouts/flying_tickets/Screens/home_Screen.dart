
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home/layouts/flying_tickets/Screens/tickets_view.dart';
import 'package:home/layouts/flying_tickets/Utils/app_info_list.dart';
import 'package:home/layouts/flying_tickets/Utils/app_style.dart';

import '../Utils/app_layout.dart';
import '../flight_Booking/view/flight_booking_home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor:Colors.transparent ,
        title: Text('flying tickets'),
      ),
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   'Good morning',
                        //   style: Styles.headlinestyle3,
                        // ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Book Tickets',
                          style: Styles.headlinestyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/images/img_1.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0XFF526799)),
                  padding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                  child: Center(
                    child: Text(
                      "Airline tickets",
                      style: Styles.textStyle.copyWith(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height:20 ,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(children: [
                    Icon(Icons.flight_takeoff_rounded),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Departure',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(children: [
                    Icon(Icons.flight_land_rounded),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Arrival',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FlightBookingHomePage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xD91130CE)),
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                    child: Center(
                      child: Text(
                        "Find tickets",
                        style: Styles.textStyle.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       color: const Color(0XFF4F6FD),
                //       border: Border.all(width: 2, color: Colors.black)),
                //   padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                //   child: Row(
                //     children: [
                //       const Icon(
                //         FluentSystemIcons.ic_fluent_search_regular,
                //         color: Color(0XFFBFC205),
                //       ),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       Expanded(
                //         child: TextField(
                //           decoration: InputDecoration(
                //             hintText: 'Search...',
                //             border: InputBorder.none,
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'UpComing Flights',
                      style: Styles.headlinestyle2,
                    ),
                    InkWell(
                      onTap: () {
                        print('You are tapping');
                      },
                      child: Text(
                        'View all',
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((singleTicket) => TicketView(
                        ticket: singleTicket,
                      ))
                  .toList(),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left:15,right:15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'UpComing Flights',
                  style: Styles.headlinestyle2,
                ),
                InkWell(
                  onTap: () {
                    print('You are tapping');
                  },
                  child: Text(
                    'View all',
                    style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left:15,right:15 ),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 425,
                  width: size.width * 0.46,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 1,
                                spreadRadius: 1),
                          ],
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/image/flying/sit.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),

                      Text(
                        "20% discount on early booking of this flight. Don't miss out!",
                        style: Styles.headlinestyle2,
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: 220,
                          decoration: BoxDecoration(
                              color: const Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(18)),
                          padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headlinestyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Take the survey about our services and get a discount.",
                                style: Styles.headlinestyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            right: -45,
                            top: -40,
                            child: Container(
                              padding: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 18, color: const Color(0xFF189999)),
                                  color: Colors.transparent),
                            ))
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: size.width * 0.44,
                      height: 210,
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: const Color(0xFFEC6545)),
                      child: Column(
                        children: [
                          Text(
                            "Take love",
                            style: Styles.headlinestyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5),
                          RichText(
                              text: const TextSpan(children: [
                                TextSpan(text: '😍', style: TextStyle(fontSize: 38)),
                                TextSpan(text: '🥰', style: TextStyle(fontSize: 50)),
                                TextSpan(text: '😘', style: TextStyle(fontSize: 38)),
                              ]))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 30),


        ],
      ),
    );
  }
}
