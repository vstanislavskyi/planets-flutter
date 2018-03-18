import 'package:flutter/material.dart';
import 'package:elon_musk/model/planets.dart';
import 'package:elon_musk/ui/home/PlanetRow.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return new Expanded(
//        child: new ListView.builder(
//      itemBuilder: (context, index) => new PlanetRow(planets[index]),
//      itemCount: planets.length,
//      padding: new EdgeInsets.symmetric(vertical: 16.0),
//    ));
    return new Expanded(
      child: new Container(
        color: new Color(0xFF736AB7),
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver: new SliverFixedExtentList(
                itemExtent: 152.0,
                delegate: new SliverChildBuilderDelegate(
                    (context, index) => new PlanetRow(planets[index]),
                    childCount: planets.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
