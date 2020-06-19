import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutterreto3/models/ourText.dart';

class OurImage extends StatelessWidget{

  final String pathImage;
  final String title;
  final String year;
  final String description;

  OurImage ({Key key, this.pathImage,this.title,this.year,this.description} ):super(key:key);

  @override
  Widget build(BuildContext context) {
    return new Container(
            margin: EdgeInsets.all(5.0),
            child: new ClipRRect(
              borderRadius: new BorderRadius.circular(37.0),
              child: new Image(
                image: new AssetImage(this.pathImage),
                height: 200.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
            ),
      );
  }}