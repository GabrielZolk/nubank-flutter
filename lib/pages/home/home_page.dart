import 'package:flutter/material.dart';
import 'package:nubank_flutter/pages/home/widgets/menu_app.dart';
import 'package:nubank_flutter/pages/home/widgets/my_app_bar.dart';
import 'package:nubank_flutter/pages/home/widgets/my_dots_app.dart';
import 'package:nubank_flutter/pages/home/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool _showMenu;
  late int _currentIndex;
  double xPosition = 0;
  double _yPosition = 0;


  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    if (_yPosition == null) {
    _yPosition = _screenHeight * .24;  
    }
    return Scaffold(
        backgroundColor: Colors.purple[800],
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            MyAppBar(
              showMenu: _showMenu,
              onTap: () {
                setState(() {
                  _showMenu = !_showMenu;
                  _yPosition = _showMenu ? _screenHeight * .75 : _screenHeight * .25;
                });
              },
            ),
            MenuApp(
              top: _screenHeight * .20,
              showMenu: _showMenu,
            ),
            PageViewApp(
              showMenu: _showMenu,
              top: _yPosition, // !_showMenu ? _screenHeight * .25 : _screenHeight * .76,
              onChanged: (index){
                setState(() {
                  _currentIndex = index;
                });
              },
              onPanUpdate: (details) {
                double middlePosition =  _screenHeight * .76 - _screenHeight * .25;
                middlePosition = middlePosition / 2;
                setState(() {
                  _yPosition += details.delta.dy;

                  _yPosition = _yPosition < _screenHeight * .25 ? _screenHeight * .25 : _yPosition;
                  _yPosition = _yPosition > _screenHeight * .76 ? _screenHeight * .76 : _yPosition;

                  if (_yPosition != _screenHeight * .76 && details.delta.dy > 0) {
                  _yPosition = _yPosition > _screenHeight * .25 + middlePosition ? _screenHeight * .76 : _yPosition;
                  }

                  if (_yPosition != _screenHeight * .25 && details.delta.dy < 0) {
                  _yPosition = _yPosition < _screenHeight * .76 - middlePosition ? _screenHeight * .25 : _yPosition;
                  }

                  if (_yPosition == _screenHeight * .76) {
                    _showMenu = true;
                  } else if (_yPosition == _screenHeight * .25) {
                    _showMenu = false;
                  }
                });
              },
            ),
            MyDotApp(
              showMenu: _showMenu,
                top: _screenHeight * .70,
              currentIndex: _currentIndex,
            )
          ],
        ));
  }
}
