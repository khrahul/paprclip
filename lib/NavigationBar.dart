import 'package:flutter/material.dart';
import 'package:paprclip/SelectedDividens.dart';
class Navigation extends StatefulWidget {
  _navigation createState() => _navigation();

}
class _navigation extends State<Navigation> {
  int i = 0;
  //Change here for Different Screens i Use only Screen 4 everywhere
  var pages = [
    new SelectedDividens(),
    new SelectedDividens(),
    new SelectedDividens(),
    new SelectedDividens()
  ];
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery
        .of(context)
        .size
        .height;
    width = MediaQuery
        .of(context)
        .size
        .width;
    return new Scaffold(
      body: pages[i],


      bottomNavigationBar: Container(
        height: (height/812)*69.33,
        child: BottomNavigationBar(
          selectedFontSize: 9,
          unselectedFontSize: 9,
          selectedLabelStyle: TextStyle(
            color: Color(0XFF0C0E25),
            fontWeight: FontWeight.w600
          ),
          unselectedLabelStyle: TextStyle(
              color: Color(0XFF0C0E25).withOpacity(0.54),
              fontWeight: FontWeight.w600
          ),

          items: [


            BottomNavigationBarItem(
              icon: Image.asset("assets/select_home.png"),
              title: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text('Home'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/news.png"),
              title: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text('News'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/watch_list.png"),
              title: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text('Watchlist'),
              ),

            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/profile.png"),
              title: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text('Profile'),
              ),

            ),
          ],
          currentIndex: i,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              i = index;
            });
            //currentIndex: _selectedIndex,
            //selectedItemColor: Colors.caps,

          },
          backgroundColor: Colors.white,
          selectedItemColor:Color(0XFF0C0E25),
          unselectedItemColor: Color(0XFF0C0E25).withOpacity(0.54),


        ),
      ),


    );
  }
}
