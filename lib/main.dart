import 'package:appbar_flutter_example/page/MainPage.dart';
import 'package:appbar_flutter_example/page/Sub1Page.dart';
import 'package:appbar_flutter_example/page/UnknownPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '웹페이지입니다',
      home: MainPage(),
      initialRoute: "/${MainPage.pageName}",
      onGenerateRoute: (settings) {
        if (settings.name == "/${Sub1Page.pageName}") {
          return PageRouteBuilder(
            settings: settings,
            pageBuilder: (_, __, ___) => Sub1Page(),
          );
        }
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => MainPage(),
        );
      },
    );
  }
}
