import "package:flutter/material.dart";
import "package:flutter_expandable_menu/flutter_expandable_menu.dart";
import "package:flutter_expandable_menu/floating_menu_callback.dart";
import 'package:flutter_expandable_menu/floating_menu_item.dart';
import 'OrderPage.dart';
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState 
    extends State<MainPage> 
    with TickerProviderStateMixin 
    implements FloatingMenuCallback {
  String centerText = "Home";
  final List<FloatingMenuItem> floatMenuList = [
    FloatingMenuItem(id: 1, icon: Icons.favorite, backgroundColor: Colors.deepOrangeAccent),
    FloatingMenuItem(id: 2, icon: Icons.map, backgroundColor: Colors.brown),
    FloatingMenuItem(id: 3, icon: Icons.email, backgroundColor: Colors.indigo),
    FloatingMenuItem(id: 4, icon: Icons.event, backgroundColor: Colors.pink),
    FloatingMenuItem(id: 5, icon: Icons.print, backgroundColor: Colors.green),
    FloatingMenuItem(id: 6, icon: Icons.home, backgroundColor: Colors.deepPurple),
    FloatingMenuItem(id: 7, icon: Icons.location_on, backgroundColor: Colors.blueAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Text(centerText)
          ),
          FlutterExpandableMenu(
            menuList: floatMenuList,
            callback: this,
            backgroundColor: Colors.transparent,
            menuBackgroundColor: Colors.black,
            menuIcon: AnimatedIcons.menu_close,
            menuAlignment: Alignment.center,
            outerTransitionDuration: Duration(milliseconds: 300),
            menusTransitionDuration: Duration(milliseconds: 500),
            menusTransitionDelay: Duration(milliseconds: 200),
          )
        ],
      )
    );
  }
  @override
  void onMenuClick(FloatingMenuItem floatingMenuItem) {
    if (floatingMenuItem != null) {
      print("onMenuClicked : " + floatingMenuItem.id.toString());
      switch (floatingMenuItem.id) {
        case 1:{
          centerText = "Favorite";
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPage("Favourite")));
        }
          break;
        case 2:
          {
            centerText = "Map";
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPage("Map")));
          }
          break;
        case 3:
          {
            centerText = "Email";
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPage("Email")));
          }
          break;
        case 4:
          {
            centerText = "Event";
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPage("Event")));
          }
          break;
        case 5:
          {
            centerText = "Print";
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPage("Print")));
          }
          break;
        case 6:
          {
            centerText = "Home";
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPage("Home")));
          }
          break;
        case 7:
          {
            centerText = "Location";
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPage("Location")));
          }
          break;
      }

      setState(() {});
    }
  }
}