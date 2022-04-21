import 'package:appbar_flutter_example/widget/MyAppBar.dart';
import 'package:appbar_flutter_example/widget/MyLayout.dart';
import 'package:flutter/material.dart';

class Sub1Page extends StatelessWidget {
  static String className = "Sub1Page";
  static String pageName = "/$className";

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
