// Dart arms
import 'dart:ui';

// Essential Flutter packages
import 'package:flutter/material.dart';

// Useful methods, used globally
class Include {
  // Properties
  Color appPrimaryColor = Color.fromRGBO(233, 72, 109, 1);
  Color appGradientPink = Color.fromRGBO(193, 55, 111, 0.9);
  Color appGradientLightPink = Color.fromRGBO(241, 120, 100, 0.9);
  String imagesPath = 'assets/images/';
  double _appBarButtonsImagesScale = 3.0;

  // Methods
  Size screenSize(BuildContext context, Window window) {
    return MediaQuery.of(context).size;
  }

  double statusBar(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  AppBar propperAppBar({String title, bool travel = false}) {
    return AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: travel ? Colors.transparent : Colors.blueAccent,
        flexibleSpace: Container(
            decoration: BoxDecoration(

                // AppBar gradient
                gradient: travel
                    ? LinearGradient(
                        colors: [appGradientPink, appGradientLightPink],
                        stops: [0, 0],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight)
                    : LinearGradient(colors: []))),

        // AppBar bottom border
        bottom: PreferredSize(
            preferredSize: Size.zero,
            child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 2,
                            color: Color.fromRGBO(255, 255, 255, .1)))))),

        // Aside menu (Drawer)
        leading: Padding(
          padding: EdgeInsets.only(left: 5),
          child: Image.asset("assets/images/sidelist.png",
              scale: _appBarButtonsImagesScale, semanticLabel: "Aside menu"),
        ),

        // Title
        title: Padding(
          padding: EdgeInsets.only(top: 3),
          child: Text(title,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 2)),
        ),
        centerTitle: true,
        actions: <Widget>[
          // Activity (Notifcations)
          GestureDetector(
              onTap: () {},
              child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                    // Bell
                    Image.asset("assets/images/activity.png",
                        scale: _appBarButtonsImagesScale,
                        semanticLabel: "Activity (Notifcations)"),

                    // New activity
                    Padding(
                      padding: EdgeInsets.only(top: 7, bottom: 6),
                      child: Image.asset("assets/images/dot.png",
                          scale: _appBarButtonsImagesScale,
                          semanticLabel: "New Activity (Notifcations)"),
                    )
                  ]))),

          // Search
          Padding(
            padding: EdgeInsets.only(right: 5, left: 8),
            child: GestureDetector(
                onTap: () {},
                child: Image.asset("assets/images/search.png",
                    scale: _appBarButtonsImagesScale, semanticLabel: "Search")),
          )
        ]);
  }

  Divider buildDivider() {
    return Divider(
      thickness: 2.0,
      height: 2.0,
      color: Color.fromRGBO(225, 122, 152, 1.0),
    );
  }

  // Gradient Color
  Gradient appGradientColor = LinearGradient(
    colors: [Color.fromRGBO(193, 55, 111, 1), Color.fromRGBO(241, 120, 100, 1)],
    stops: [.2, 1],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  // Divider Color and Height
  Color _orDividerColor = Color.fromRGBO(225, 122, 152, 1.0);
  double _orDividerHeightThickness = 2.0;

  // Box Shadow
  List<BoxShadow> addShadowToWidget = <BoxShadow>[
    BoxShadow(
        offset: Offset(0, 20),
        color: Color.fromRGBO(0, 0, 0, .2),
        spreadRadius: -1,
        blurRadius: 15)
  ];
}
