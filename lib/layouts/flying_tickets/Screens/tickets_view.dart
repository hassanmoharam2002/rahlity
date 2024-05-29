import 'package:flutter/material.dart';

import 'package:home/layouts/flying_tickets/Utils/app_layout.dart';
import 'package:home/layouts/flying_tickets/Utils/app_style.dart';
import 'package:home/layouts/flying_tickets/Widgets/thick_containar.dart';
//import 'dart:async';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.ticket, this.isColor});
  final Map<String, dynamic> ticket;
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.90,
      height: 200,
      child: Container(
        // color: Colors.red,
        margin: EdgeInsets.only(right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            showing the blue part of the card/ticket
            */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Color(0XFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headlinestyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlinestyle3
                                .copyWith(color: Colors.black),
                      ),
                      Expanded(child: Container()),
                      ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  print(
                                      'the width is ${constraints.constrainWidth()}');
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        height: 1,
                                        width: 3,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: isColor == null
                                                  ? Colors.white
                                                  : Colors.grey.shade300),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
                          child: Icon(
                            Icons.local_airport_rounded,
                            color: isColor == null
                                ? Colors.white
                                : Color(0XFF8ACCF7),
                          ),
                        ),
                      ),
                      ThickContainer(
                        isColor: true,
                      ),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.headlinestyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlinestyle3
                                .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? Styles.headlinestyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlinestyle4
                                  .copyWith(color: Colors.grey.shade600),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headlinestyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlinestyle3
                                .copyWith(color: Colors.grey.shade600),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headlinestyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlinestyle4
                                  .copyWith(color: Colors.grey.shade600),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            showing the orange part of the card/ticket
            */

            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                width: 3,
                                height: 1,
                                child: DecoratedBox(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*
            showing the orange part of the card/ticket
            */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                // borderRadius: BorderRadius.only(
                //    bottomLeft: Radius.circular(21),
                //    bottomRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.only(
                  left: 16, top: 16, bottom: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // AppColumnLayout(
                      //     firstText: ticket['date'],
                      //     secondText: 'Date',
                      //     alignment: CrossAxisAlignment.start),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: isColor == null
                                ? Styles.headlinestyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlinestyle3
                                    .copyWith(color: Colors.black),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Date',
                            style: isColor == null
                                ? Styles.headlinestyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headlinestyle3
                                    .copyWith(color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: isColor == null
                                ? Styles.headlinestyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlinestyle3
                                    .copyWith(color: Colors.black),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Departure time',
                            style: isColor == null
                                ? Styles.headlinestyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headlinestyle3
                                    .copyWith(color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: isColor == null
                                ? Styles.headlinestyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headlinestyle3
                                    .copyWith(color: Colors.black),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'NUMBERS',
                            style: isColor == null
                                ? Styles.headlinestyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headlinestyle3
                                    .copyWith(color: Colors.grey.shade600),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              // padding: EdgeInsets.all(16),
            ),
          ],
        ),
      ),
    );
  }
}
