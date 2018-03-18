import 'package:elon_musk/model/planets.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;
  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
      constraints: new BoxConstraints.expand(),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(planet.name),
          new Hero(
            tag: "planet-hero-${planet.id}",
            child: new Image(
              //image: new AssetImage("assets/img/mars.png"),
              image: new AssetImage(planet.image),
              width: 92.0,
              height: 92.0,
            ),
          )
        ],
      ),
    ));
  }
}
