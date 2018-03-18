import 'package:flutter/material.dart';
//import 'package:elon_musk/ui/details/detail_page.dart';
import 'package:elon_musk/ui/home/HomePage.dart';

void main() {
  //Routes.initRoutes();
  runApp(new MaterialApp(
    title: "Planets",
    home: new HomePage(),
//    routes: <String, WidgetBuilder>{
//      '/detail': (_) => new DetailsPage(),
//    },
  ));
}
