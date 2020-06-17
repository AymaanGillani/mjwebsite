import 'package:carousel_pro/carousel_pro.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:mj_college/AlwaysScrollBar.dart';
import 'package:mj_college/NavBar/NavBar.dart';
import 'package:mj_college/SideHeadings.dart';
import 'package:mj_college/Text.dart';
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
  @override
  Widget build(BuildContext context) {
    final ScrollController _myController = new ScrollController();
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size size = mediaQueryData.size;
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: DraggableScrollbar.rrect(
              backgroundColor: Colors.blue,
              heightScrollThumb: 100.0,
              alwaysVisibleScrollThumb: true,
              controller: _myController,
              child: ListView.builder(
                controller: _myController,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      NavBar(),
                      SizedBox(height: size.height / 100),
                      SizedBox(
                        height: size.height / 1.2,
                        child: Carousel(
                          autoplayDuration: Duration(seconds: 4),
                          images: [
                            Image.asset(
                              'aa.png',
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'bb.png',
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'gg.png',
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'dd.png',
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'ee.png',
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'cc.png',
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'ff.png',
                              fit: BoxFit.cover,
                            ),
                          ],
                          dotBgColor: Colors.transparent,
                        ),
                      ),
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
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        homePara3,
                        style: pageTextStyle,
                      ),
                      // FloatingActionButton(onPressed: () {
                      //   print(size.width);
                      //   print(size.height);
                      // }),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
