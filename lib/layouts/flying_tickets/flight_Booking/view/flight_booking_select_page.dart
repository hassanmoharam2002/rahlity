import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:home/layouts/flying_tickets/flight_Booking/domin/flight_data.dart';

class FlightBookingSelectPage extends StatefulWidget {
  const FlightBookingSelectPage({Key? key}) : super(key: key);

  @override
  State<FlightBookingSelectPage> createState() =>
      _FlightBookingSelectPageState();
}

class _FlightBookingSelectPageState extends State<FlightBookingSelectPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int numofadult = 2;
  int counter = 0;

  String NameOfSeat = "";
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConditionalBuilder(
          condition: counter <= numofadult,
          builder: (context) => SafeArea(
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 9,
                            child: Container(
                              color: Color(0XFF526799),
                              child: Column(
                                children: [
                                  AppBar(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                    centerTitle: true,
                                    foregroundColor: Colors.white,
                                    title: const Text("Select Seat"),
                                    actions: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.more_horiz),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(24.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "EGY",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text(
                                                    "egypt",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                  ),
                                                  Text(
                                                    "16 : 25",
                                                    style: TextStyle(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Expanded(
                                                  child: Column(
                                                children: const [],
                                              )),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: const [
                                                  Text(
                                                    "Dub",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text(
                                                    "Dubai",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                  ),
                                                  Text(
                                                    "18 : 20",
                                                    style: TextStyle(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const Divider(
                                              color: Colors.grey, height: 20),
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      // color: Colors.blue,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: const [
                                                          Text(
                                                            "Flight No.",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 12,
                                                          ),
                                                          Text(
                                                            "JT - 910",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      // color: Colors.blue,
                                                      child: Column(
                                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            "Departure.",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 12,
                                                          ),
                                                          Text(
                                                            "16 : 25",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      // color: Colors.blue,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: const [
                                                          Text(
                                                            "Arrival",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 12,
                                                          ),
                                                          Text(
                                                            "18 : 20",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      // color: Colors.blue,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: const [
                                                          Text(
                                                            "Flight Date.",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 12,
                                                          ),
                                                          Text(
                                                            "March 18",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: const [
                                                        Text(
                                                          "Passenger.",
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 12,
                                                        ),
                                                        Text(
                                                          "2 Adult",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: const [
                                                        Text(
                                                          "Class",
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 12,
                                                        ),
                                                        Text(
                                                          "Economy",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 12,
                            child: Container(
                              color: Colors.white,
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 12,
                                            width: 12,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              border: Border.all(
                                                color: Colors.grey[400]!,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          const Text("Available")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 12,
                                            width: 12,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              color: Colors.grey[400],
                                              border: Border.all(
                                                color: Colors.grey[400]!,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          const Text("Booked")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 12,
                                            width: 12,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              color: const Color.fromRGBO(
                                                  53, 112, 255, 1),
                                              border: Border.all(
                                                color: Colors.grey[400]!,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          const Text("Selected")
                                        ],
                                      )
                                    ],
                                  ),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        16, 24, 16, 24),
                                    child: GridView.builder(
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 7,
                                        crossAxisSpacing: 8,
                                        mainAxisSpacing: 16,
                                        childAspectRatio: 0.68,
                                      ),
                                      itemCount: flightSeatItems.length,
                                      itemBuilder: (context, index) {
                                        final item = flightSeatItems[index];
                                        if (item.seatType == SeatType.aisle) {
                                          return Container();
                                        }
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              item.seatType = SeatType.selected;
                                              counter++;
                                            });
                                          },
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.grey,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    color: item.seatType ==
                                                            SeatType.available
                                                        ? Colors.white
                                                        : item.seatType ==
                                                                SeatType.booked
                                                            ? Colors
                                                                .blueGrey[50]
                                                            : Color.fromRGBO(53,
                                                                112, 255, 1),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Text(item.seatName),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  )),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(53, 112, 255, 1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Book A Flight",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          fallback: (context) => AlertDialog(
                title: Text("error"),
                content: Text("you have already select your items "),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("close"))
                ],
              )),
    );
  }
}
