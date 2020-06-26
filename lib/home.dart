import 'dart:async';
import 'dart:io';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:mj_college/AlwaysScrollBar.dart';
import 'package:mj_college/NavBar/NavBar.dart';
import 'package:mj_college/SideHeadings.dart';
import 'package:mj_college/Text.dart';
import 'package:mj_college/functions.dart';
import 'package:mj_college/headings.dart';
import 'package:mj_college/lists.dart';
import 'package:mj_college/styles.dart';

class Home extends StatefulWidget {
  // Home({this.toggle});
  // final Function toggle;
  @override
  _HomeState createState() => _HomeState(/*toggle: toggle*/);
}

class _HomeState extends State<Home> {
  // _HomeState({this.toggle});
  // final Function toggle;
  List<Image> myImages = [];

  @override
  void initState() {
    super.initState();
    carouselImages.forEach((element) {
      myImages.add(Image.network(
        element,
        fit: BoxFit.cover,
      ));
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    myImages.forEach((element) {
      precacheImage(element.image, context);
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size size = mediaQueryData.size;
    return Scaffold(
      body: SingleChildScrollViewWithScrollbar(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            NavBar(),
            SizedBox(height: size.height / 100),
            SizedBox(
              height: size.height / 1.2,
              child: Carousel(
                autoplayDuration: Duration(seconds: 4),
                images: [
                  myImages[0],
                  myImages[1],
                  myImages[6],
                  myImages[3],
                  myImages[4],
                  myImages[2],
                  myImages[5]
                ],
                dotBgColor: Colors.transparent,
              ),
            ),
            SizedBox(height:30),
            HomeContent(),
          ],
        ),
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({
    Key key,
  }) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  ScrollController _myController1 = ScrollController();
  ScrollController _myController2 = ScrollController();
  double c1, c2;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 15), (timer) {
      c1 = _myController1.position.maxScrollExtent;
      _myController1.animateTo(c1,
          duration: Duration(seconds: 15), curve: Curves.linear);
    });
    Timer.periodic(Duration(seconds: 15), (timer) {
      c2 = _myController2.position.maxScrollExtent;
      _myController2.animateTo(c2,
          duration: Duration(seconds: 15), curve: Curves.linear);
    });
    _myController1.addListener(() {
      if (_myController1.position.pixels >=
          _myController1.position.maxScrollExtent - 5) {
        _myController1.jumpTo(0.0);
      }
    });
    _myController2.addListener(() {
      if (_myController2.position.pixels >=
          _myController2.position.maxScrollExtent - 5) {
        _myController2.jumpTo(0.0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
          children: [
            Expanded(
              flex: 1,
              child: createNewsAndAnnouncement(
                  newsHeading, _myController1, newsAndEventsItems),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.0),
                      Text(
                        homeHeading,
                        style: headingTextStyle.copyWith(fontSize: 20.0),
                      ),
                      Divider(),
                      SizedBox(height: 10.0),
                      Text(
                        homePara1,
                        style: pageTextStyle,
                      ),
                      Text(
                        homePara2,
                        style: pageTextStyle,
                      ),
                      Text(
                        homeSide1,
                        style: sideHeadingStyle,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        homePara3,
                        style: pageTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: createNewsAndAnnouncement(
                  announcementHeading, _myController2, annoucementItems),
            ),
          ],
      ),
    );
  }
}
