import 'package:flutter/material.dart';
import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageViewApp({super.key, required this.top, required this.onChanged, required this.onPanUpdate, required this.showMenu});
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 200),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height * .45,
      left: 0,
      right: 0,
      child: GestureDetector(
        onPanUpdate: onPanUpdate,
        child: PageView(
          onPageChanged: onChanged,
          physics: showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
          children: <Widget>[
            CardApp(),
            CardApp(),
            CardApp(),
          ],
        ),
      ),
    );
  }
}
