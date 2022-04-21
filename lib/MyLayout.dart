import 'package:appbar_flutter_example/MyAppBar.dart';
import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  final double height = 51;
  Widget content;

  MyLayout({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: height,
              bottom: 0,
              child: content,
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: MyAppBar(height: height),
            ),
          ],
        ),
      ),
    );
  }
}
