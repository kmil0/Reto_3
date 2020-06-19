import 'dart:convert';

import 'package:flutterreto3/models/ourText.dart';
import 'package:flutter/material.dart';

class ElementView extends StatelessWidget{

  final String pathImage;
  final String title;
  final String description;

  ElementView({Key key, this.title, this.pathImage, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
            height: 150.0,
            child: new Card(
              elevation: 10.0,
              shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Expanded(
                      flex:1,
                      child: new Image.asset(this.pathImage,
                      height: 150.0,
                          fit: BoxFit.cover,
                      ),),
                  new SizedBox(width: 10.0,),
                  new Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new H1(text:this.title,),
                          new NormalText(text: this.description,)
                        ],
                      )
                      ),
                ],
              ),
            ),
          );
  }
}