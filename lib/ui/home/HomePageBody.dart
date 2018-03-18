import 'package:flutter/material.dart';
import 'package:elon_musk/model/planets.dart';
import 'package:elon_musk/ui/home/PlanetRow.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new PlanetRow(planets[0]);
  }
}
