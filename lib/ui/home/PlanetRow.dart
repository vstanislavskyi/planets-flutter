import 'package:flutter/material.dart';
import 'package:elon_musk/model/planets.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;

  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final baseTextStyle = const TextStyle(
      fontFamily: 'Poppins',
    );

    final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    );

    final regularTextStyle = baseTextStyle.copyWith(
      color: const Color(0xffb6b2df),
      fontSize: 9.0,
      fontWeight: FontWeight.w400,
    );

    final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 12.0);

    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            height: 4.0,
          ),
          new Text(
            planet.name,
            style: headerTextStyle,
          ),
          new Container(
            height: 10.0,
          ),
          new Text(
            planet.location,
            style: subHeaderTextStyle,
          ),
          new Container(
            margin: new EdgeInsets.symmetric(vertical: 7.0),
            height: 2.0,
            width: 18.0,
            color: new Color(0xFF00C6FF),
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: _planetValue(
                  value: planet.distance,
                  valueStyle: regularTextStyle,
                  image: "assets/img/ic_distance.png",
                ),
              ),
              new Expanded(
                child: _planetValue(
                  value: planet.gravity,
                  valueStyle: regularTextStyle,
                  image: "assets/img/ic_gravity.png",
                ),
              ),
            ],
          )
        ],
      ),
    );

    final planetCard = new Container(
      height: 120.0,
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
      child: planetCardContent,
    );

    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        //image: new AssetImage("assets/img/mars.png"),
        image: new AssetImage(planet.image),
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

  Widget _planetValue({value, image, valueStyle}) {
    return new Row(
      children: <Widget>[
        new Image.asset(image, height: 12.0),
        new Container(
          width: 8.0,
        ),
        new Text(value, style: valueStyle),
      ],
    );
  }
}
