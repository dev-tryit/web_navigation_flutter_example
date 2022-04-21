import 'package:appbar_flutter_example/page/MainPage.dart';
import 'package:appbar_flutter_example/widget/OnHover.dart';
import 'package:appbar_flutter_example/util/PageUtil.dart';
import 'package:appbar_flutter_example/page/Sub1Page.dart';
import 'package:appbar_flutter_example/main.dart';
import 'package:flutter/material.dart';

enum MyAppBarAlignment { left, center, right }

class MenuItem {
  Widget mainMenu;
  List<Widget> subMenuList;

  MenuItem(this.mainMenu, this.subMenuList);
}

class MyAppBar extends StatefulWidget {
  double height;
  MyAppBarAlignment alignment;
  double intervalSpaceSize;

  MyAppBar(
      {Key? key,
      required this.height,
      this.alignment = MyAppBarAlignment.right,
      this.intervalSpaceSize = 0})
      : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    List<MenuItem> menuItemList = [
      MenuItem(
          InkWell(
              child: Text("Menu1"),
              onTap: () => PageUtil.go(context, MainPage.pageName)),
          [
            InkWell(
                child: Text("SubMenu1"),
                onTap: () => PageUtil.go(context, Sub1Page.pageName)),
            Text("SubMenu2"),
            Text("SubMenu3"),
          ]),
      MenuItem(Text("Menu2"), [
        Text("SubMenu1"),
        Text("SubMenu2"),
        Text("SubMenu3"),
      ]),
      MenuItem(Text("Menu3"), [
        Text("SubMenu1"),
        Text("SubMenu2"),
        Text("SubMenu3"),
      ]),
      MenuItem(Text("Menu4"), [
        Text("SubMenu1"),
        Text("SubMenu2"),
        Text("SubMenu3"),
      ]),
    ];

    MainAxisAlignment mainAxisAlignment;
    if (widget.alignment == MyAppBarAlignment.left) {
      mainAxisAlignment = MainAxisAlignment.start;
    } else if (widget.alignment == MyAppBarAlignment.center) {
      mainAxisAlignment = MainAxisAlignment.center;
    } else {
      mainAxisAlignment = MainAxisAlignment.end;
    }

    return Stack(
      children: [
        Container(
          color: Colors.red,
          height: widget.height,
          width: double.infinity,
        ),
        Row(
          mainAxisAlignment: mainAxisAlignment,
          children: menuItemList
              .asMap()
              .map((i, e) => MapEntry(
                  i,
                  Padding(
                    padding: i == 0
                        ? EdgeInsets.zero
                        : EdgeInsets.only(left: widget.intervalSpaceSize),
                    child: OnHover(
                      builder: (isHovered) => MenuItemWidget(
                        e.mainMenu,
                        e.subMenuList,
                        widget.height,
                        isTransparent: isHovered,
                      ),
                    ),
                  )))
              .values
              .toList(),
        ),
      ],
    );
  }
}

class MenuItemWidget extends StatelessWidget {
  Widget mainMenu;
  List<Widget> subMenu;
  bool isTransparent;
  double height;

  MenuItemWidget(
    this.mainMenu,
    this.subMenu,
    this.height, {
    Key? key,
    required this.isTransparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          alignment: Alignment.center,
          child: mainMenu,
        ),
        Opacity(
          opacity: isTransparent ? 1 : 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: subMenu,
          ),
        )
      ],
    );
  }
}
