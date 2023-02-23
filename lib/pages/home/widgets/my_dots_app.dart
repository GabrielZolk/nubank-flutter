import 'package:flutter/material.dart';


class MyDotApp extends StatelessWidget {
  final int currentIndex;

  Color getColor(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  const MyDotApp({super.key, required this.currentIndex});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration:
              BoxDecoration(color: getColor(0), shape: BoxShape.circle),
        ),
        SizedBox(
          width: 8,
        ),
       AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration:
              BoxDecoration(color: getColor(1), shape: BoxShape.circle),
        ),
        SizedBox(
          width: 8,
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration:
              BoxDecoration(color: getColor(2), shape: BoxShape.circle),
        )
      ],
    );
  }
}
