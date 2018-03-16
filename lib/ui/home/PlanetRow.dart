import 'package:flutter/material.dart';

class PlanetRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var planetCard = new Container(
      height: 124.0,
      margin: const EdgeInsets.only(left: 46.0),
      decoration: new BoxDecoration(
          color: new Color(0xff333366),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: new Offset(0.0, 10.0))
          ]),
    );

    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage("assets/img/mars.png"),
        width: 92.0,
        height: 92.0,
      ),
    );

    return new Container(
//      margin: const EdgeInsets.only(
//        top: 16.0,
//        bottom: 16.0,
//        left: 24.0,
//        right: 24.0,
//      ),
      height: 120.0,
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: new Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail,
        ],
      ),
    );
  }
}
