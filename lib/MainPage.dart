import 'package:appbar_flutter_example/MyAppBar.dart';
import 'package:appbar_flutter_example/MyLayout.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      content: Container(
        color: Colors.yellow,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("content"),
            ],
          ),
        ),
      ),
    );
  }
}
