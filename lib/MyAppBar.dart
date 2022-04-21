import 'package:appbar_flutter_example/MenuItem.dart';
import 'package:appbar_flutter_example/OnHover.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  double height;

  MyAppBar({Key? key, required this.height}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
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
                builder: (isHovered) => MenuItem(
                    "Menu1",
                    [
                      Text("SubMenu1"),
                      Text("SubMenu2"),
                      Text("SubMenu3"),
                    ],
                    widget.height,
                    isTransparent: isHovered,
                  )
              ),
              SizedBox(width: 100),
              OnHover(
                builder: (isHovered) => MenuItem(
                  "Menu2",
                  [
                    Text("SubMenu1"),
                    Text("SubMenu2"),
                    Text("SubMenu3"),
                  ],
                  widget.height,
                  isTransparent: isHovered,
                )
              ),
              SizedBox(width: 100),
              OnHover(
                builder: (isHovered) => MenuItem(
                  "Menu3",
                  [
                    Text("SubMenu1"),
                    Text("SubMenu2"),
                    Text("SubMenu3"),
                  ],
                  widget.height,
                  isTransparent: isHovered,
                )
              ),
              SizedBox(width: 100),
              OnHover(
                builder: (isHovered) => MenuItem(
                  "Menu4",
                  [
                    Text("SubMenu1"),
                    Text("SubMenu2"),
                    Text("SubMenu3"),
                  ],
                  widget.height,
                  isTransparent: isHovered,
                )
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }

}
