import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  String menuStr;
  List<Widget> menuColumn;
  bool isTransparent;
  double height;

  MenuItem(
    this.menuStr,
    this.menuColumn,
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
          child: Text(menuStr),
        ),
        Opacity(
          opacity: isTransparent ? 1 : 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: menuColumn,
          ),
        )
      ],
    );
  }
}
