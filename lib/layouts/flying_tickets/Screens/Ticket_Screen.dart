import 'package:flutter/material.dart';
import 'package:home/layouts/flying_tickets/Screens/tickets_view.dart';
import 'package:home/layouts/flying_tickets/Utils/app_info_list.dart';
import 'package:home/layouts/flying_tickets/Utils/app_layout.dart';
import 'package:home/layouts/flying_tickets/Utils/app_style.dart';
import 'package:home/layouts/flying_tickets/Widgets/column_layout.dart';
import 'package:home/layouts/flying_tickets/Widgets/layout_builder.dart';

//import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Tickets",
              style: Styles.headlinestyle1,
            ),
            SizedBox(
              height: 20,
            ),
            FittedBox(
              child: Container(
                padding: EdgeInsets.all(3.5),
                child: Row(
                  children: [
                    /*
                Upcoming
                */
                    Container(
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(vertical: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(50),
                        ),
                        color: Colors.white,
                      ),
                      child: Center(child: Text('Upcoming')),
                    ),

                    /*
                         Previous
                        */

                    Container(
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(vertical: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(50),
                        ),
                        color: Colors.transparent,
                      ),
                      child: Center(child: Text('Previous')),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0XFFF4F6FD),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: TicketView(
                ticket: ticketList[0],
                isColor: false,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            // Container(
            //   color: Colors.white,
            //   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            //   margin: EdgeInsets.symmetric(horizontal: 18),
            //   child: Column(
            //     children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: const [
            //     AppColumnLayout(
            //       firstText: "Flutter DB",
            //       secondText: "Passenger",
            //       alignment: CrossAxisAlignment.start,
            //       isColor: false,
            //     ),
            //     AppColumnLayout(
            //       firstText: "5221 43534",
            //       secondText: "Passport",
            //       alignment: CrossAxisAlignment.end,
            //       isColor: false,
            //     ),
            //   ],
            // ),
            //       SizedBox(
            //         height: 20,
            //       ),
            //       const AppLayoutBuilder(
            //         sections: 18,
            //         isColor: false,
            //         width: 5,
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 0,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: "Flutter DB",
                        secondText: "Passenger",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: "5221 43534",
                        secondText: "Passport",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const AppLayoutBuilder(
                    sections: 18,
                    isColor: false,
                    width: 5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: "35645 35563434",
                        secondText: "Number of e-ticket",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: "46774TH43",
                        secondText: "Booking code",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const AppLayoutBuilder(
                    sections: 18,
                    isColor: false,
                    width: 5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/visa.png",
                                scale: 11,
                              ),
                              Text(
                                " *** 2421",
                                style: Styles.headlinestyle3,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Payment method",
                            style: Styles.headlinestyle4,
                          )
                        ],
                      ),
                      const AppColumnLayout(
                        firstText: "\$256",
                        secondText: "Price",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            /* Bar code */
            const SizedBox(
              height: 1,
            ),
            // Container(
            //   margin: EdgeInsets.only(left: 15, right: 15),
            //   padding: EdgeInsets.only(top: 20, bottom: 20),
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.only(
            //           bottomRight: Radius.circular(21),
            //           bottomLeft: Radius.circular(21))),
            //   child: Container(
            //     padding: EdgeInsets.symmetric(horizontal: 15),
            //     child: ClipRRect(
            //       borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
            //       child: BarcodeWidget(
            //         data: 'https://github.com/martin0vovo',
            //         drawText: false,
            //         color: Styles.textColor,
            //         width: double.infinity,
            //         height: 70,
            //         barcode: Barcode.code128(),
            //       ),
            //     ),
            //   ),
            // ),
            //     SizedBox(
            //       height: 20,
            //     ),
            //     Container(
            //       padding: EdgeInsets.only(left: 15),
            //       child: TicketView(
            //         ticket: ticketList[0],
            //       ),
            //     ),
            //   ],
            // ),
            // Positioned(
            //   left: 21,
            //   top: 295,
            //   child: Container(
            //     padding: EdgeInsets.all(3),
            //     decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         border: Border.all(color: Styles.textColor, width: 2)),
            //     child: CircleAvatar(
            //       maxRadius: 4,
            //       backgroundColor: Styles.textColor,
            //     ),
            //   ),
            // ),
            // Positioned(
            //   right: 21,
            //   top: 295,
            //   child: Container(
            //     padding: EdgeInsets.all(3),
            //     decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         border: Border.all(color: Styles.textColor, width: 2)),
            //     child: CircleAvatar(
            //       maxRadius: 4,
            //       backgroundColor: Styles.textColor,
            //     ),
            //   ),
            // ),
          ],
        ),
      ]),
    );
  }
}
