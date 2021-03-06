import 'package:flutter/material.dart';

class OurText extends StatelessWidget{
  final String text;
  final Color colorText;
  final double fontSize;

  OurText ({
    Key key,
    this.text,
    this.colorText,
    this.fontSize
  }
      ):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(color: this.colorText, fontSize: this.fontSize, fontFamily: 'Lato'),
    );
  }
}

class H1 extends StatelessWidget{
  final String text;
  H1({Key key, this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text: this.text, colorText: Colors.cyanAccent);
  }
}

class H2 extends StatelessWidget{
  final String text;
  H2({Key key, this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text:this.text, colorText: Colors.black,);
  }
}

class NormalText extends StatelessWidget{
  final String text;
  NormalText({Key key, this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text:this.text, colorText: Colors.white,);
  }
}