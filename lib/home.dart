import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mj_college/sizes.dart';
import 'package:mj_college/styles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size size = mediaQueryData.size;
    Color primaryThemeColor = Colors.blue;
    bool _searchToggle = false;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: sizeOfAppbar(size),
            decoration: BoxDecoration(
              color: primaryThemeColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[700],
                  offset: Offset(0.0, 1.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Image.asset('assets/logo.png'),
                Spacer(),
                FlatButton(
                  padding: appBarButtonPadding(size),
                  child: Text(
                    'ABOUT',
                    style: GoogleFonts.getFont(
                      'Roboto',
                      textStyle: appbarButtonText,
                    ),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  padding: appBarButtonPadding(size),
                  child: Text(
                    'ACADEMICS',
                    style: GoogleFonts.getFont(
                      'Roboto',
                      textStyle: appbarButtonText,
                    ),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  padding: appBarButtonPadding(size),
                  child: Text(
                    'ADMISSIONS',
                    style: GoogleFonts.getFont(
                      'Roboto',
                      textStyle: appbarButtonText,
                    ),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  padding: appBarButtonPadding(size),
                  child: Text(
                    'DEPARTMENTS',
                    style: GoogleFonts.getFont(
                      'Roboto',
                      textStyle: appbarButtonText,
                    ),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  padding: appBarButtonPadding(size),
                  child: Text(
                    'PLACEMENTS',
                    style: GoogleFonts.getFont(
                      'Roboto',
                      textStyle: appbarButtonText,
                    ),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  padding: appBarButtonPadding(size),
                  child: Text(
                    'R & D',
                    style: GoogleFonts.getFont(
                      'Roboto',
                      textStyle: appbarButtonText,
                    ),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  padding: appBarButtonPadding(size),
                  child: Text(
                    'ALUMINI',
                    style: GoogleFonts.getFont(
                      'Roboto',
                      textStyle: appbarButtonText,
                    ),
                  ),
                  onPressed: () {},
                ),
                SearchBox(size: size),
                FlatButton.icon(
                  padding: appBarButtonPadding(size),
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  label: Container(),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {
                    setState(() {
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBox extends StatefulWidget {
  const SearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: searchBoxSize(widget.size).width,
      height: searchBoxSize(widget.size).height,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
