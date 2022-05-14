import "package:flutter/material.dart";
import "screens/Homescreen.dart";
import "screens/shop.dart";
import "screens/money.dart";

class Mainscreen extends StatefulWidget {
  const Mainscreen({ Key? key }) : super(key: key);

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {

  double _gridviewwidth = 150;
  double _gridviewheight = 214;

  
  int _currentIndex = 0;

  List<Widget> pages = [
    Homescreen(),
    Shop(),
    Money(),
  ];

  void setIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        onTap: setIndex,
        currentIndex: _currentIndex,
        backgroundColor: Color.fromRGBO(36, 35, 41, 1),
        selectedItemColor: Color.fromRGBO(225, 210, 74, 1),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/location.png"),
            label: ""

          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/shop.png"),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/money.png'),
            label: ""
          ),
          

        ]
      ),
      body: pages[_currentIndex]
    );

  }
}