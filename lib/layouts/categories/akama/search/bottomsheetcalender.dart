


import 'package:flutter/material.dart';

class BottomSheetCalender extends StatefulWidget {
  const BottomSheetCalender({super.key});

  @override
  State<BottomSheetCalender> createState() => _BottomSheetCalenderState();
}

class _BottomSheetCalenderState extends State<BottomSheetCalender> {
  @override
  Widget build(BuildContext context) {
    return
  }

  var selectedate = DateTime.now();

  void showtaskdatpicker() async {
    var userselectdate = await showDatePicker(
        context: context,
        initialDate: selectedate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));

    if (userselectdate == null) {
      return;
    }
    setState(() {
      selectedate = userselectdate;
    });
  }
}
