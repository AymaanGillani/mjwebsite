import 'package:flutter/material.dart';
import 'package:mj_college/colors.dart';
import 'package:mj_college/sizes.dart';
import 'package:mj_college/styles.dart';

FlatButton desktopAppBarButton(Size size, Function function, String name) {
  double appBarFontSize = (size.width - 100.0) / 75;
  return FlatButton(
    padding: appBarButtonPadding(size),
    child: Text(
      name,
      style: appbarButtonText.copyWith(fontSize: appBarFontSize),
    ),
    onPressed: function,
  );
}

FlatButton tabletAppBarButton(Function function, String name) {
  return FlatButton(
    child: Text(
      name,
      style: appbarButtonText /*.copyWith(fontSize: appBarFontSize)*/,
    ),
    onPressed: function,
  );
}

FlatButton mobileAppBarButton(Function function, String name) {
  return FlatButton(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    child: Text(
      name,
      style: appbarButtonText /*.copyWith(fontSize: appBarFontSize)*/,
    ),
    onPressed: function,
  );
}

FlatButton drawerButton(Size size, Function function, String name) {
  return FlatButton(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    hoverColor: Colors.blue[300],
    child: Text(
      name,
      style: drawerButtonText,
      textAlign: TextAlign.center,
    ),
    onPressed: function,
  );
}

FlatButton drawerButtonVertical(Function function, String name) {
  return FlatButton(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    hoverColor: Colors.blue[300],
    padding: EdgeInsets.symmetric(vertical: 0.0),
    child: Text(
      name,
      softWrap: false,
      style: drawerButtonText,
      textAlign: TextAlign.center,
    ),
    onPressed: function,
  );
}

createDesktopNavBarElements(List navBarItems, Size size) {
  var buttons = <FlatButton>[];
  navBarItems.forEach((item) {
    buttons.add(desktopAppBarButton(size, item[0], item[1]));
  });
  return buttons;
}

createTabletNavBarElements(List navBarItems, Size size) {
  var buttons = <Widget>[];
  navBarItems.forEach((item) {
    buttons.add(tabletAppBarButton(item[0], item[1]));
  });
  buttons.add(
    ButtonTheme(
      minWidth: size.width / 17,
      child: FlatButton(
        child: Icon(
          Icons.search,
          size: size.width / 50,
          color: appBarTextColor,
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: () {},
      ),
    ),
  );
  return buttons;
}

createMobileNavBarElements(List navBarItems) {
  var buttons = <Widget>[];
  buttons.add(Divider(
    thickness: 3.0,
  ));
  navBarItems.forEach((item) {
    buttons.add(mobileAppBarButton(item[0], item[1]));
  });
  return buttons;
}

createDeskTabHorDrawerElements(List horDrawerItems, Size size) {
  var buttons = <FlatButton>[];
  horDrawerItems.forEach((item) {
    buttons.add(drawerButton(size, item[0], item[1]));
  });
  return buttons;
}

createMobileHorDrawerElements(List horDrawerItems) {
  var buttons = <FlatButton>[];
  horDrawerItems.forEach((item) {
    buttons.add(drawerButtonVertical(item[0], item[1]));
  });
  return buttons;
}

createDeskTabVertDrawerElements(List vertDrawerItems) {
  var buttons = <Widget>[];
  buttons.add(Image.asset(
    'assets/DrawerLogo.png',
    height: 180.0,
  ));
  vertDrawerItems.forEach((item) {
    buttons.add(drawerButtonVertical(item[0], item[1]));
  });
  return buttons;
}

createMobileVertDrawerElements(List vertDrawerItems) {
  var buttons = <Widget>[];
  vertDrawerItems.forEach((item) {
    buttons.add(drawerButtonVertical(item[0], item[1]));
  });
  return buttons;
}

createNewsAndAnnouncementItems(List listItems, int index) {
  var items = <Widget>[];
  items.add(SizedBox(height: 20.0));
  items.add(SizedBox(
    height: 70.0,
    child: Image.asset('testlogo.png'),
  ));
  listItems.forEach((element) {
    items.add(SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          color: Colors.blue[100],
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(element),
          ),
          elevation: 4.0,
        ),
      ),
    ));
  });
  items.add(SizedBox(height: 20.0));
  return items[index];
}

createNewsAndAnnouncement(
    String heading, ScrollController controller, List items) {
  return Card(
    child: Column(
      children: [
        SizedBox(height: 20.0),
        Text(
          heading,
          style: headingTextStyle,
        ),
        SizedBox(height: 20.0),
        SizedBox(
          height: 400,
          child: ListView.separated(
              controller: controller,
              itemCount: items.length+3,
              separatorBuilder: (context, index) => SizedBox(height: 5),
              itemBuilder: (context, index) {
                return createNewsAndAnnouncementItems(items, index);
              }),
        ),
      ],
    ),
  );
}
