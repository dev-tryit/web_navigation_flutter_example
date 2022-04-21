import 'package:appbar_flutter_example/widget/MyAppBar.dart';
import 'package:appbar_flutter_example/widget/MyLayout.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  static String pageName = "MainPage";

  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      content: Container(
        color: Colors.yellow,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("MainPage"),
            ],
          ),
        ),
      ),
    );
  }
}
