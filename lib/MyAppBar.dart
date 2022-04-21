import 'package:appbar_flutter_example/OnHover.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  double height;

  MyAppBar({Key? key, required this.height}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  bool menu1Transparent = false;
  bool menu2Transparent = false;
  bool menu3Transparent = false;
  bool menu4Transparent = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.red,
          height: widget.height,
          width: double.infinity,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OnHover(
                builder:(isHovered) {
                  menu1Transparent = isHovered;
                  return menuItem("Menu1", menu1Column());
                },
              ),
              SizedBox(width: 100),
              OnHover(
                builder:(isHovered) {
                  menu2Transparent = isHovered;
                  return menuItem("Menu2", menu2Column());
                },
              ),
              SizedBox(width: 100),
              OnHover(
                builder:(isHovered) {
                  menu3Transparent = isHovered;
                  return menuItem("Menu3", menu3Column());
                },
              ),
              SizedBox(width: 100),
              OnHover(
                builder:(isHovered) {
                  menu4Transparent = isHovered;
                  return menuItem("Menu4", menu4Column());
                },
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }

  Widget menuItem(String menuStr, Widget menuColumn) {
    return Column(
      children: [
        Container(
            height: widget.height,
            alignment: Alignment.center,
            child: Text(menuStr)),
        menuColumn
      ],
    );
  }

  Widget menu1Column() {
    return Opacity(
      opacity: menu1Transparent ? 1 : 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("SubMenu1"),
          Text("SubMenu2"),
          Text("SubMenu3"),
        ],
      ),
    );
  }

  Widget menu2Column() {
    return Opacity(
      opacity: menu2Transparent ? 1 : 0,
      child: Column(
        children: [
          Text("SubMenu1"),
          Text("SubMenu2"),
          Text("SubMenu3"),
        ],
      ),
    );
  }

  Widget menu3Column() {
    return Opacity(
      opacity: menu3Transparent ? 1 : 0,
      child: Column(
        children: [
          Text("SubMenu1"),
          Text("SubMenu2"),
          Text("SubMenu3"),
        ],
      ),
    );
  }

  Widget menu4Column() {
    return Opacity(
      opacity: menu4Transparent ? 1 : 0,
      child: Column(
        children: [
          Text("SubMenu1"),
          Text("SubMenu2"),
          Text("SubMenu3"),
        ],
      ),
    );
  }
}
