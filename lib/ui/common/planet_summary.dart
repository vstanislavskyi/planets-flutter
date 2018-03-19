import 'package:elon_musk/ui/details/detail_page.dart';
import 'package:elon_musk/ui/common/separator.dart';
import 'package:elon_musk/ui/text_style.dart';
import 'package:flutter/material.dart';
import 'package:elon_musk/model/planets.dart';

class PlanetSummary extends StatelessWidget {
  final Planet planet;
  final bool horizontal;

  PlanetSummary(this.planet, {this.horizontal = true});
  PlanetSummary.vertical(this.planet) : horizontal = false;

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
      margin: horizontal
          ? new EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0)
          : new EdgeInsets.fromLTRB(16.0, 42.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment:
            horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
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
          new Separator(),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Expanded(
                flex: horizontal ? 1 : 0,
                child: _planetValue(
                  value: planet.distance,
                  valueStyle: regularTextStyle,
                  image: "assets/img/ic_distance.png",
                ),
              ),
              new Expanded(
                flex: horizontal ? 1 : 0,
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
      height: horizontal ? 120.0 : 150.0,
      margin: horizontal
          ? new EdgeInsets.only(left: 46.0)
          : new EdgeInsets.only(top: 72.0),
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
      alignment:
          horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child: new Hero(
        tag: "planet-hero-${planet.id}",
        child: new Image(
          //image: new AssetImage("assets/img/mars.png"),
          image: new AssetImage(planet.image),
          width: 92.0,
          height: 92.0,
        ),
      ),
    );

    return new GestureDetector(
      //onTap: () => Navigator.pushNamed(context, "/detail"),
      onTap: horizontal
          ? () => Navigator.of(context).push(new PageRouteBuilder(
              pageBuilder: (_, __, ___) => new DetailPage(planet),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      new FadeTransition(
                        opacity: animation,
                        child: child,
                      )))
          : null,
      child: new Container(
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
