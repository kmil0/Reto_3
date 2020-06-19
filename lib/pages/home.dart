import 'package:flutter/material.dart';
import 'package:flutterreto3/pages/our_app_bar.dart';
import 'package:flutterreto3/pages/our_footer.dart';
import 'package:flutterreto3/pages/our_list_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OurAppBar(iconAppBar: Icon(Icons.favorite_border), title: "R E T O  3 "),
      body: Column(
        children:[
          Expanded(
          child: OurListView(),
          )
        ],
      ),
      bottomNavigationBar: OurFooter(iconLeft: Icon(Icons.home), iconRight: Icon(Icons.account_circle),),
    );
  }
}