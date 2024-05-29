import 'package:flutter/material.dart';
import 'package:home/layouts/flying_tickets/Utils/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  const AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: isColor == null
              ? Styles.headlinestyle3.copyWith(color: Colors.white)
              : Styles.headlinestyle3,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          secondText,
          style: isColor == null
              ? Styles.headlinestyle4.copyWith(color: Colors.white)
              : Styles.headlinestyle4,
        ),
      ],
    );
  }
}
