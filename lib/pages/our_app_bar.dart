import 'package:flutter/material.dart';
import 'package:flutterreto3/models/ourText.dart';

class OurAppBar extends StatelessWidget with PreferredSizeWidget{
  final String title;
  final Icon iconAppBar;

  OurAppBar({
    Key key,
    this.title = 'Default',
    this.iconAppBar = const Icon(Icons.airport_shuttle)
  }):super( key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: H1(text: this.title),
      backgroundColor: Colors.black54,
      actions: [
        IconButton(
          icon: this.iconAppBar,
          onPressed: () {print('Presionaste el boton de alertas');},
          iconSize: 35.0,
        ),
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () {print('Presionaste el boton siguiente');},
          iconSize: 35.0,
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight((kToolbarHeight));
}