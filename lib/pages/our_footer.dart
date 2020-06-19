import 'package:flutter/material.dart';

class OurFooter extends StatelessWidget{
  final Icon iconLeft;
  final Icon iconRight;

  OurFooter({
    Key key,
    this.iconLeft = const Icon(Icons.ac_unit),
    this.iconRight = const Icon(Icons.threed_rotation)
}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 70.0,
      child: BottomNavigationBar(
        backgroundColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        iconSize: 35.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: this.iconLeft,
            title: Text('default'),
          ),
          BottomNavigationBarItem(
            icon: this.iconRight,
            title: Text('default2'),
          )
        ],
      ),
    );
  }
}