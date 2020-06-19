import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutterreto3/models/data.dart';
import 'package:flutterreto3/pages/ourImage.dart';

import 'element_view.dart';

class OurListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: DataStory(),
            ),
          Divider(),
         Expanded(
           child: VerticalView(),
         )
         //   Expanded(child: DataStory())
          ],
        )
    );
  }
}

class VerticalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        for(var post in jsonPost)
          ElementView(
            description: post['description'],
            pathImage: post['pathImage'],
            title: post['title'],
          )
      ],
    );
  }
}


class DataStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        for (final item in jsonStory)
          OurImage(
              title: item['title'],
              year: item['year'],
              pathImage: item['pathImage'],
              description: item['description'],)
      ],
    );
  }
}
