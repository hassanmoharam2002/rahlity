import 'package:flutter/material.dart';
import 'package:home/layouts/flying_tickets/Utils/app_style.dart';

class AppTitleWithActionText extends StatelessWidget {
  final String title;
  final String actionText;

  const AppTitleWithActionText(
      {Key? key, required this.title, required this.actionText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.headlinestyle2,
        ),
        InkWell(
          onTap: () {
            print("Viewing all...");
          },
          child: Text(
            actionText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
