import 'package:appbar_flutter_example/MyAppBar.dart';
import 'package:appbar_flutter_example/MyLayout.dart';
import 'package:flutter/material.dart';

class Sub1Page extends StatelessWidget {
  static String pageName = "Sub1Page";

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      content: Container(
        color: Colors.yellow,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Sub1Page"),
            ],
          ),
        ),
      ),
    );
  }
}
